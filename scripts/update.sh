#!/bin/bash
# Weekly maintenance script for AI CLI tools
# Run this every week to update all Homebrew-managed tools

set -e

echo "🔄 AI CLI Tools - Weekly Update"
echo "================================"
echo ""

# Update Homebrew itself
echo "📦 Updating Homebrew..."
brew update
echo ""

# Upgrade all Homebrew packages
echo "⬆️  Upgrading Homebrew packages..."
brew upgrade
echo ""

# Check for outdated packages
OUTDATED=$(brew outdated)
if [ -z "$OUTDATED" ]; then
    echo "✅ All packages are up to date!"
else
    echo "⚠️  Some packages are still outdated:"
    echo "$OUTDATED"
fi
echo ""

# Update npm global packages (if Gemini CLI still on npm)
if npm list -g @google/gemini-cli &>/dev/null; then
    echo "📦 Updating Gemini CLI (npm)..."
    npm update -g @google/gemini-cli
    echo "✅ Gemini CLI updated"
    echo ""
fi

# Cleanup
echo "🧹 Cleaning up..."
brew cleanup
echo ""

# Show versions
echo "📋 Current versions:"
echo "-------------------"
command -v claude &>/dev/null && echo "Claude Code: $(claude --version 2>&1 | head -1 || echo 'installed')"
command -v codex &>/dev/null && echo "Codex: $(codex --version 2>&1 | head -1 || echo 'installed')"
command -v opencode &>/dev/null && echo "OpenCode: $(opencode --version 2>&1 | head -1 || echo 'installed')"
command -v gemini &>/dev/null && echo "Gemini CLI: $(gemini --version 2>&1 | head -1 || echo 'installed')"
echo ""

echo "✨ Update complete!"
echo ""
echo "💡 Tip: Run this script weekly or set a calendar reminder"
