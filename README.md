# 🚀 Copilot CLI Quick Start

> **Your friendly terminal tutor** — learn GitHub Copilot CLI by doing, not reading! 🐙✨

<img width="907" height="261" alt="Screenshot 2026-02-11 at 10 34 58 AM" src="https://github.com/user-attachments/assets/5ae4c68a-7794-4a1c-a68e-fc6bfd3a6e69" />


[![GitHub](https://img.shields.io/badge/GitHub-Copilot_CLI-blue?logo=github)](https://github.com/features/copilot)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Security Policy](https://img.shields.io/badge/Security-Policy-brightgreen?logo=github)](SECURITY.md)

---

## 🤔 What Is This?

**Copilot CLI Quick Start** is a [Copilot CLI skill](https://docs.github.com/copilot/concepts/agents/about-copilot-cli) that teaches you how to use GitHub Copilot CLI — interactively, right inside your terminal. No docs to read. No videos to watch. Just you and a friendly AI tutor that walks you through everything step by step. 🎓

It features **two learning tracks** so everyone can learn at their own pace:
- 🧑‍💻 **Developer Track** — terminal shortcuts, file mentions, custom instructions, MCP, and more
- 🎨 **Non-Developer Track** — writing, task planning, understanding code, and getting summaries

Designed for **absolute beginners**. Even if you've never touched a terminal, we've got you! 🫶

---

## 📦 Installation

### Prerequisites

- [GitHub Copilot CLI](https://github.com/github/copilot-cli) installed (`brew install copilot-cli` or `npm install -g @github/copilot`)
- An active [Copilot subscription](https://github.com/features/copilot/plans)

### Add the Skill

#### Option A: Personal Skill (works everywhere) ⭐ Recommended

Clone the repo and copy the skill to your personal skills directory:

```bash
git clone https://github.com/DUBSOpenHub/copilot-cli-quickstart.git
mkdir -p ~/.copilot/skills
cp -r copilot-cli-quickstart/.github/skills/copilot-cli-quickstart ~/.copilot/skills/
```

Then in a Copilot CLI session, run `/skills reload` to pick it up.

#### Option B: Project Skill (auto-discovered)

Clone the repo and start Copilot CLI from inside it:

```bash
git clone https://github.com/DUBSOpenHub/copilot-cli-quickstart.git
cd copilot-cli-quickstart
copilot
```

The skill at `.github/skills/copilot-cli-quickstart/` is automatically discovered.

That's it! You're ready. 🎉

---

## 🎮 Usage

### 🎓 Tutorial Mode — Learn Step by Step

```
> start tutorial
```

The tutor asks if you're a **Developer** or **Non-Developer**, then walks you through the right lessons:

#### 📚 Shared Lessons (Both Tracks)

| # | Lesson | What You'll Learn |
|---|--------|-------------------|
| 🏠 S1 | **Welcome & Verify** | Orientation, confirm CLI is working |
| 💬 S2 | **Your First Prompt** | Talk to Copilot in plain English |
| 🎮 S3 | **The Permission Model** | YOU are always in control |

#### 🧑‍💻 Developer Track

| # | Lesson | What You'll Learn |
|---|--------|-------------------|
| 🎛️ D1 | **Slash Commands & Modes** | `/` powers, `Shift+Tab`, `!` shortcut |
| 📎 D2 | **File Mentions with @** | Point Copilot at specific files |
| 📋 D3 | **Planning with /plan** | Break tasks into steps before coding |
| ⚙️ D4 | **Custom Instructions** | Make Copilot work YOUR way |
| 🚀 D5 | **Advanced** | MCP servers, skills, models |

#### 🎨 Non-Developer Track

| # | Lesson | What You'll Learn |
|---|--------|-------------------|
| 📝 N1 | **Writing & Editing** | Use Copilot as your writing assistant |
| 📋 N2 | **Task Planning** | Break down projects with /plan |
| 🔍 N3 | **Understanding Code** | Read code without writing it |
| 📊 N4 | **Summaries & Extraction** | Get key info from any document |

### ❓ Q&A Mode — Just Ask!

```
> what does /compact do?
```

```
> how do I switch models?
```

```
> what's the difference between plan mode and interactive mode?
```

Ask anything about Copilot CLI and get a clear, beginner-friendly answer with examples! 💡

---

## 🌟 Why This Skill?

| Without this skill | With this skill |
|-------------------|-----------------|
| 📖 Read long docs | 🎮 Learn by doing |
| 😰 Intimidating terminal | 🎉 Fun and friendly |
| 🤷 "Where do I start?" | 📍 Guided step by step |
| 👤 One-size-fits-all | 🛤️ Dev & Non-Dev tracks |
| 📝 Take notes | 🧠 Progress tracked for you |
| 😐 Solo learning | 🤝 Interactive exercises |

---

## 🏗️ Architecture

```mermaid
flowchart TD
    USER["👤 User"] --> SKILL["🧠 SKILL.md<br/>Lesson content & rules"]
    SKILL --> AGENT["🤖 agent.md<br/>Persona & tool config"]
    AGENT --> SQL["🗄️ SQL<br/>Progress tracking"]
    AGENT --> DOCS["📚 fetch_docs<br/>Live documentation"]
    AGENT --> ASK["🙋 ask_user<br/>Interactive exercises"]
    PRD["📋 PRD<br/>Design & diagrams"] -.-> SKILL
    CAT["📦 catalog.yml<br/>Metadata"] -.-> SKILL
```

---

## 🏗️ Project Structure

```
copilot-cli-quickstart/
├── .github/
│   ├── ISSUE_TEMPLATE/               ← 🐛 Bug, feature, & lesson templates
│   ├── PULL_REQUEST_TEMPLATE.md      ← 📝 PR checklist
│   └── skills/
│       └── copilot-cli-quickstart/
│           └── SKILL.md              ← 🧠 Skill file (required path for /skills add)
├── agents/
│   ├── copilot-cli-quickstart.agent.md  ← 🤖 Agent config
│   └── copilot-cli-quickstart.md        ← 📋 PRD (Product Requirements Doc)
├── skills/
│   └── copilot-cli-quickstart/
│       ├── SKILL.md              ← 🧠 The brain — canonical skill source
│       └── catalog.yml           ← 📋 Camp Air catalog metadata
├── .gitignore
├── CHANGELOG.md                  ← 📋 Version history
├── CODE_OF_CONDUCT.md            ← 🤝 Contributor Covenant
├── CONTRIBUTING.md               ← 🛠️ How to contribute
├── LICENSE                       ← 📄 MIT
├── SECURITY.md                   ← 🔒 Security policy
├── TESTING.md                    ← 🧪 Conversation playbooks & QA
└── README.md                     ← 👋 You are here!
```

---

## 🔒 Security

See [SECURITY.md](SECURITY.md) for our security policy and how to report vulnerabilities.

This repo has **Dependabot alerts** and **automated security updates** enabled. 🛡️

---

## 🔧 Top Troubleshooting

### 🚨 Skill Add Issues

**Symptom:** Skill doesn't appear in `/skills list` or isn't activating.

**Fixes:**
- ✅ **Check skill location** — The `SKILL.md` file must be in either `~/.copilot/skills/copilot-cli-quickstart/SKILL.md` (personal) or `.github/skills/copilot-cli-quickstart/SKILL.md` (project, auto-discovered when you `cd` into the repo).
- ✅ **Reload skills** — Run `/skills reload` in your Copilot CLI session after copying files.
- ✅ **Verify CLI version** — Run `copilot --version` outside the CLI session. Update if needed: `brew upgrade copilot-cli` or `npm update -g @github/copilot`.

---

### 🔐 Authentication / Subscription Issues

**Symptom:** "Copilot not enabled" or authentication errors when trying to use the CLI.

**Fixes:**
- ✅ **Verify subscription** — Check [github.com/settings/copilot](https://github.com/settings/copilot) to confirm you have an active Copilot subscription (Individual, Business, or Enterprise).
- ✅ **Re-authenticate** — Run `copilot auth logout` then `copilot auth login` outside the CLI session. Follow the browser login flow.
- ✅ **Check permissions** — For organizations, confirm your org admin has enabled Copilot for your account. Check with your GitHub admin if unsure.

---

### 🛡️ Permission Prompts Confusion

**Symptom:** Copilot keeps asking "Allow", "Deny", or "Allow for session" and I'm not sure which to choose.

**Explanation:**
- ✅ **Allow** — Copilot performs this action once, then asks again next time.
- ❌ **Deny** — Copilot won't do this action. Totally safe! Nothing bad happens if you deny.
- 🔄 **Allow for session** — Copilot can do this type of action for the rest of this session without asking again. Use this to speed up repetitive tasks (e.g., if it's creating multiple files).

**Pro tip:** When learning, use "Allow" (not "Allow for session") so you see what Copilot does each time. You can always deny — Copilot respects your choice! 🎮

---

### 📎 File Mention `@` Not Autocompleting

**Symptom:** Typing `@` doesn't show files or autocomplete doesn't work.

**Fixes:**
- ✅ **Be in a directory with files** — File mentions (`@filename`) only work when you're in a directory that contains files. Navigate to a project folder first: `cd ~/my-project`.
- ✅ **Use full paths if needed** — If autocomplete isn't working, type the full path: `@/path/to/file.js` or `@./relative/file.js`.
- ✅ **Check Copilot CLI version** — File mentions require Copilot CLI v1.5.0+. Run `copilot --version` to check.

---

### 🪟 Windows Shell Gotchas

**Symptom:** Commands don't work as expected on Windows.

**Fixes:**
- ✅ **Use PowerShell or Windows Terminal** — Copilot CLI works best with PowerShell 7+ or Windows Terminal (not legacy cmd.exe).
- ✅ **Path separators** — Use forward slashes `/` or escape backslashes `\\` in paths. Copilot CLI normalizes paths, but Windows tools may be picky.
- ✅ **Run as user (not admin)** — Run Copilot CLI as your regular user. Admin mode can cause permission issues with Git and npm.

---

## 🤝 Contributing

Got ideas to make this tutor even better? 🎨 See [CONTRIBUTING.md](CONTRIBUTING.md) for the full guide!

**Quick ways to help:**
- 🐛 [Report a bug](https://github.com/DUBSOpenHub/copilot-cli-quickstart/issues/new?template=bug_report.md)
- 💡 [Suggest a feature](https://github.com/DUBSOpenHub/copilot-cli-quickstart/issues/new?template=feature_request.md)
- 📚 [Propose a lesson](https://github.com/DUBSOpenHub/copilot-cli-quickstart/issues/new?template=lesson_idea.md)
- ✏️ Fix a typo — just open a PR!

See [TESTING.md](TESTING.md) for conversation playbooks and QA checklists.

---

## 📄 License

[MIT](LICENSE) — use it, share it, remix it! 🎶

---

## 🐙 Built with Love

Made with 💜 by [DUBSOpenHub](https://github.com/DUBSOpenHub) to help more people discover the joy of GitHub Copilot CLI.

**Happy learning!** 🚀✨
