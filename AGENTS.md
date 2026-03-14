# Agents

## Overview
Copilot CLI Quick Start ships a single Copilot CLI agent and skill that act as a friendly, interactive terminal tutor. It teaches GitHub Copilot CLI to absolute beginners through two learning tracks (Developer and Non-Developer) with step-by-step guided lessons.

## Available Agents

### copilot-cli-quickstart (agent)
- **Purpose**: Interactive tutorial agent that walks users through GitHub Copilot CLI basics via two tailored learning tracks.
- **Usage**: Install via `/skills add DUBSOpenHub/copilot-cli-quickstart`, then say `start tutorial` in a Copilot CLI session.
- **Location**: `agents/copilot-cli-quickstart.agent.md`
- **Model**: Default Copilot CLI model

## Available Skills

### copilot-cli-quickstart (skill)
- **Purpose**: The same interactive tutor packaged as a reusable Copilot CLI skill for personal or org-wide installation.
- **Usage**:
  - **Option A (personal)**: `git clone https://github.com/DUBSOpenHub/copilot-cli-quickstart.git && cp -r copilot-cli-quickstart/skills/copilot-cli-quickstart ~/.copilot/skills/`, then `/skills reload`.
  - **Option B (project)**: Clone the repo and run Copilot CLI from inside it — the skill is auto-discovered from `skills/copilot-cli-quickstart/`.
  - **Option C**: `/skills add DUBSOpenHub/copilot-cli-quickstart`
- **Location**: `skills/copilot-cli-quickstart/`

## Learning Tracks

| Track | Audience | Topics |
|-------|----------|--------|
| 🧑‍💻 Developer | Engineers familiar with terminal | Shortcuts, file mentions, custom instructions, MCP, agents |
| 🎨 Non-Developer | Anyone new to the terminal | Writing, task planning, understanding code, getting summaries |

## Configuration
- No prerequisites beyond GitHub Copilot CLI and an active Copilot subscription.
- The skill is auto-discovered when Copilot CLI is launched from the repo root.
