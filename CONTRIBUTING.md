# 🤝 Contributing to Copilot CLI Quick Start

First off — **thank you!** 💜 Every contribution makes this tutor better for the next person learning Copilot CLI.

## 🎯 Ways to Contribute

### 💡 No Code Required!

You don't need to write code to help. Open an [Issue](https://github.com/DUBSOpenHub/copilot-cli-quickstart/issues) for any of these:

- 🐛 **Report a bug** — Did a lesson confuse you? Tell us!
- 💡 **Suggest a lesson** — What topic should we cover next?
- ✏️ **Fix a typo** — Spotted a mistake? Let us know!
- 🌍 **Translation help** — Want to help translate for non-English speakers?
- 🎨 **UX feedback** — Was something intimidating or unclear?

### 🧑‍💻 Code Contributions

1. **Fork** this repo
2. **Create a branch**: `git checkout -b my-improvement`
3. **Make your changes** — see the development guide below
4. **Test your changes** — see [TESTING.md](TESTING.md)
5. **Open a PR** — fill out the template and describe what you changed

## 🛠️ Development Setup

### Prerequisites

- [GitHub Copilot CLI](https://github.com/github/copilot-cli) installed
- An active [Copilot subscription](https://github.com/features/copilot/plans)

### Local Testing

1. Clone the repo:
   ```bash
   git clone https://github.com/DUBSOpenHub/copilot-cli-quickstart.git
   cd copilot-cli-quickstart
   ```

2. Register the skill locally in a Copilot CLI session:
   ```
   /skills add ./
   ```

3. Test the tutorial flow:
   ```
   start tutorial
   ```

4. Test Q&A mode:
   ```
   what does /plan do?
   ```

5. Verify your changes against the [TESTING.md](TESTING.md) playbooks.

## 📝 What Makes a Good Contribution

- 🎉 **Keep the tone fun and friendly** — emojis welcome!
- 🐣 **Assume zero CLI experience** — explain everything
- 🎯 **One concept per lesson** — don't overwhelm
- ❌ **Never fabricate** — link to real docs
- 🧪 **Test your changes** — run through the conversation flow

## 📋 Pull Request Guidelines

- Keep PRs focused — one improvement per PR
- Update CHANGELOG.md with your change
- Follow existing file naming conventions
- If adding a lesson, include an exercise using `ask_user`

## 🐙 Code of Conduct

Please read our [Code of Conduct](CODE_OF_CONDUCT.md). We're building an inclusive community! 💜
