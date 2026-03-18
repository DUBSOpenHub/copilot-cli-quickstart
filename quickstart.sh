#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
# Copilot CLI Quick Start — one command, zero experience needed
# Installs GitHub Copilot CLI (if needed), adds the quickstart
# skill, and launches the CLI ready to go.
# ─────────────────────────────────────────────────────────────
set -euo pipefail

SKILL_REPO="DUBSOpenHub/copilot-cli-quickstart"
SKILL_NAME="copilot-cli-quickstart"
SKILL_DIR="$HOME/.copilot/skills/$SKILL_NAME"
SKILL_URL="https://raw.githubusercontent.com/$SKILL_REPO/main/.github/skills/$SKILL_NAME/SKILL.md"

echo ""
echo "🚀 Copilot CLI Quick Start"
echo "─────────────────────────────────────────"

# ── Step 1: Install Copilot CLI if not present ──────────────
if command -v copilot >/dev/null 2>&1; then
  echo "✅ Copilot CLI already installed ($(copilot --version 2>/dev/null || echo 'installed'))"
else
  echo "📦 Installing GitHub Copilot CLI..."
  if [[ "$(uname)" == "Darwin" ]] || [[ "$(uname)" == "Linux" ]]; then
    if command -v brew >/dev/null 2>&1; then
      brew install copilot-cli
    else
      curl -fsSL https://gh.io/copilot-install | bash
    fi
  else
    echo "⚠️  Windows detected — please install manually:"
    echo "   winget install GitHub.Copilot"
    echo "   Then re-run this script."
    exit 1
  fi

  # Verify installation
  if ! command -v copilot >/dev/null 2>&1; then
    # The install script may have put it in ~/.local/bin
    export PATH="$HOME/.local/bin:$PATH"
    if ! command -v copilot >/dev/null 2>&1; then
      echo "❌ Installation failed. Try manually: brew install copilot-cli"
      exit 1
    fi
  fi
  echo "✅ Copilot CLI installed!"
fi

# ── Step 2: Download the quickstart skill ───────────────────
echo "📥 Adding quickstart skill..."
mkdir -p "$SKILL_DIR"
if curl -fsSL "$SKILL_URL" -o "$SKILL_DIR/SKILL.md"; then
  echo "✅ Skill installed to $SKILL_DIR"
else
  echo "❌ Failed to download skill. Check your internet connection."
  exit 1
fi

# ── Step 3: Launch ──────────────────────────────────────────
echo ""
echo "─────────────────────────────────────────"
echo "🎓 Launching Copilot CLI..."
echo "   Just type: start tutorial"
echo "─────────────────────────────────────────"
echo ""

exec copilot < /dev/tty
