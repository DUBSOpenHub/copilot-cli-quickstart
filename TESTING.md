# 🧪 Testing Guide

This document describes how to verify the Copilot CLI Quick Start skill works correctly.

Since this is a conversational AI skill (not traditional code), testing is done through **conversation playbooks** — scripted interactions that verify expected behavior.

---

## 🎮 How to Test Locally

1. **Register the skill** in a Copilot CLI session:
   ```
   /skills add ./
   ```

2. **Run each playbook** below and verify the expected behavior.

3. **Check the QA checklist** at the bottom before submitting a PR.

---

## 📋 Conversation Playbooks

### Playbook 1: First-Time Tutorial (Developer Track)

| Step | You Say | Expected Behavior |
|------|---------|-------------------|
| 1 | `start tutorial` | Skill asks: Developer or Non-Developer? |
| 2 | Select "🧑‍💻 Developer" | Skill creates `lesson_progress` table, starts Lesson 1 |
| 3 | *(complete Lesson 1 exercise)* | Skill marks L1 done, offers Lesson 2 |
| 4 | `next lesson` | Skill starts Lesson 2 (not L1 again) |
| 5 | `lesson 5` | Skill jumps to Lesson 5 (dev track: /plan) |

### Playbook 2: First-Time Tutorial (Non-Developer Track)

| Step | You Say | Expected Behavior |
|------|---------|-------------------|
| 1 | `teach me` | Skill asks: Developer or Non-Developer? |
| 2 | Select "🎨 Non-Developer" | Skill starts shared Lesson 1 |
| 3 | *(complete shared lessons)* | After L3, skill continues to ND Lesson 4 (writing/editing) |
| 4 | `next` | Skill progresses through ND track, not dev track |

### Playbook 3: Q&A Mode

| Step | You Say | Expected Behavior |
|------|---------|-------------------|
| 1 | `what does /compact do?` | Skill fetches docs, answers clearly, suggests trying it |
| 2 | `how do I switch models?` | Skill explains `/model` command with examples |
| 3 | `what's MCP?` | Skill answers accurately (not fabricated) |

### Playbook 4: Q&A Concise Mode

| Step | You Say | Expected Behavior |
|------|---------|-------------------|
| 1 | `/plan` | Short, direct answer without full emoji greeting |
| 2 | `keyboard shortcut for clear screen` | Concise: `ctrl+l` |

### Playbook 5: Reset & Resume

| Step | You Say | Expected Behavior |
|------|---------|-------------------|
| 1 | `start tutorial` → complete 2 lessons | Progress tracked |
| 2 | `reset tutorial` | Skill clears progress, confirms reset |
| 3 | `start tutorial` | Starts from Lesson 1 again |

### Playbook 6: Edge Cases

| Step | You Say | Expected Behavior |
|------|---------|-------------------|
| 1 | `asdfghjkl` | Skill asks to clarify: tutorial or question? |
| 2 | *(empty/blank input)* | Skill handles gracefully, suggests options |
| 3 | `lesson 99` | Skill says lesson doesn't exist, shows available lessons |
| 4 | `switch to developer track` | Skill allows mid-session track change |

---

## ✅ QA Checklist

Before submitting a PR, verify:

- [ ] 🎓 Tutorial mode starts correctly for both tracks
- [ ] 🔄 Lesson progress is tracked (SQL table created/updated)
- [ ] ❓ Q&A mode answers accurately (fetches docs, doesn't fabricate)
- [ ] 🔃 "Reset tutorial" works correctly
- [ ] 🎉 Graduation message shows after completing all lessons
- [ ] 📖 CLI glossary terms are explained when used (non-dev track)
- [ ] ⚠️ Error cases are handled gracefully (unclear input, bad lesson number)
- [ ] 🤝 Tone is friendly, encouraging, and uses emojis throughout
- [ ] 🐣 No assumed CLI knowledge in non-developer track

---

## 🔍 YAML/Markdown Validation

Verify catalog metadata:

```bash
# Check YAML syntax
python3 -c "import yaml; yaml.safe_load(open('skills/copilot-cli-quickstart/catalog.yml'))" && echo "✅ YAML valid"

# Check required fields
python3 -c "
import yaml
d = yaml.safe_load(open('skills/copilot-cli-quickstart/catalog.yml'))
required = ['schema_version','id','name','description','emoji','codename','category']
missing = [f for f in required if f not in d]
print('✅ All required fields present' if not missing else f'❌ Missing: {missing}')
"
```

---

## 📊 Coverage Matrix

| Feature | Playbook | Status |
|---------|----------|--------|
| Developer tutorial flow | 1 | 🧪 |
| Non-developer tutorial flow | 2 | 🧪 |
| Q&A with docs | 3 | 🧪 |
| Concise Q&A | 4 | 🧪 |
| Reset & resume | 5 | 🧪 |
| Edge cases | 6 | 🧪 |
| Track switching | 6.4 | 🧪 |
| Graduation ceremony | 1 (full run) | 🧪 |
