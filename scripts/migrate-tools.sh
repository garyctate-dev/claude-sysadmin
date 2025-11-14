#!/bin/bash
# Migrate AI CLI tools from npm to Homebrew
# Run this script to migrate Gemini CLI and other tools
# NOTE: Do NOT run this for Claude Code - use migrate-claude.sh instead

set -e

echo "🔄 Migrating AI CLI tools to Homebrew..."
echo ""

# Check for Gemini CLI via npm
if npm list -g @google/gemini-cli &>/dev/null; then
    echo "📦 Found Gemini CLI installed via npm"
    echo "⚠️  Gemini CLI doesn't have stable Homebrew formula yet"
    echo "✅ Keeping Gemini CLI on npm (it auto-updates anyway)"
    echo ""
else
    echo "ℹ️  Gemini CLI not found via npm"
    echo ""
fi

# Install OpenCode if not already installed
if ! command -v opencode &>/dev/null; then
    echo "📥 Installing OpenCode via Homebrew..."
    brew tap sst/tap
    brew install sst/tap/opencode
    echo "✅ OpenCode installed"
    echo ""
else
    echo "✅ OpenCode already installed"
    echo ""
fi

# Check Codex installation
if command -v codex &>/dev/null; then
    echo "✅ Codex already installed"
    echo ""
else
    echo "📥 Installing Codex via Homebrew..."
    brew install --cask codex
    echo "✅ Codex installed"
    echo ""
fi

echo "✨ Migration complete!"
echo ""
echo "Next steps:"
echo "1. Run: source ~/.zshrc (or restart terminal)"
echo "2. Verify: codex --version && opencode --version"
echo "3. For Claude Code migration, see migrate-claude.sh"
