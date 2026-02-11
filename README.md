# 🚀 Copilot CLI Quick Start

> **Your friendly terminal tutor** — learn GitHub Copilot CLI by doing, not reading! 🐙✨

[![GitHub](https://img.shields.io/badge/GitHub-Copilot_CLI-blue?logo=github)](https://github.com/features/copilot)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Security Policy](https://img.shields.io/badge/Security-Policy-brightgreen?logo=github)](SECURITY.md)

---

## 🤔 What Is This?

**Copilot CLI Quick Start** is a [Copilot CLI skill](https://docs.github.com/copilot/concepts/agents/about-copilot-cli) that teaches you how to use GitHub Copilot CLI — interactively, right inside your terminal. No docs to read. No videos to watch. Just you and a friendly AI tutor that walks you through everything step by step. 🎓

It's designed for **absolute beginners** who've never touched Copilot CLI before. Even if you're new to the terminal, we've got you! 🫶

---

## 📦 Installation

### Prerequisites

- [GitHub Copilot CLI](https://github.com/github/copilot-cli) installed (`brew install copilot-cli` or `npm install -g @github/copilot`)
- An active [Copilot subscription](https://github.com/features/copilot/plans)

### Add the Skill

Inside a Copilot CLI session, run:

```
/skills add DUBSOpenHub/copilot-cli-quickstart
```

That's it! One command. You're ready. 🎉

---

## 🎮 Usage

### 🎓 Tutorial Mode — Learn Step by Step

```
> start tutorial
```

or

```
> teach me copilot cli
```

The tutor walks you through **6 hands-on lessons** with exercises and check-ins:

| # | Lesson | What You'll Learn |
|---|--------|-------------------|
| 📦 1 | **Installing & Launching** | Install in one command, launch, and log in |
| 💬 2 | **Your First Prompt** | Talk to Copilot like a coworker |
| 🎛️ 3 | **Slash Commands & Modes** | Discover `/` powers and `Shift+Tab` magic |
| 📎 4 | **Mentioning Files with @** | Point Copilot at specific files |
| 📋 5 | **Planning with /plan** | Break big tasks into steps before coding |
| ⚙️ 6 | **Custom Instructions** | Make Copilot work YOUR way |

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
| 📝 Take notes | 🧠 Progress tracked for you |
| 😐 Solo learning | 🤝 Interactive exercises |

---

## 🏗️ Project Structure

```
copilot-cli-quickstart/
├── .github/copilot/skills/
│   └── copilot-cli-quickstart/
│       └── SKILL.md              ← 🧠 The brain — skill definition
├── agents/
│   ├── copilot-cli-quickstart.agent.md  ← 🤖 Agent config
│   └── copilot-cli-quickstart.md        ← 📋 PRD (Product Requirements Doc)
├── skills/
│   └── copilot-cli-quickstart/
│       ├── SKILL.md              ← 📚 Canonical skill file
│       └── catalog.yml           ← 📋 Metadata for Camp Air catalog
├── LICENSE
├── SECURITY.md                   ← 🔒 Security policy
└── README.md                     ← 👋 You are here!
```

---

## 🔒 Security

See [SECURITY.md](SECURITY.md) for our security policy and how to report vulnerabilities.

This repo has **Dependabot alerts** and **automated security updates** enabled. 🛡️

---

## 🤝 Contributing

Got ideas to make this tutor even better? 🎨

1. **Fork** this repo
2. **Create a branch** (`git checkout -b my-improvement`)
3. **Make your changes** — maybe add a lesson, improve an exercise, or fix a typo!
4. **Open a PR** — we love PRs! 💜

### Ideas for Contributions

- 🆕 Additional lessons (MCP servers, agent mode, etc.)
- 🌍 Translations for non-English speakers
- 🎯 More interactive exercises
- 🐛 Bug fixes and improvements

---

## 📄 License

[MIT](LICENSE) — use it, share it, remix it! 🎶

---

## 🐙 Built with Love

Made with 💜 by [DUBSOpenHub](https://github.com/DUBSOpenHub) to help more people discover the joy of GitHub Copilot CLI.

**Happy learning!** 🚀✨
