#!/bin/bash
# Migrate Claude Code from npm to Homebrew (MANUAL STEPS)
#
# ⚠️  IMPORTANT: Run these commands in a SEPARATE terminal (not in Claude Code session)
# Running this inside Claude Code will cause it to uninstall itself mid-process
#
# Usage: Copy and paste these commands into a regular terminal

echo "🚨 MANUAL MIGRATION REQUIRED"
echo ""
echo "Copy and paste these commands into a SEPARATE terminal:"
echo ""
echo "# 1. Uninstall Claude Code from npm"
echo "npm uninstall -g @anthropic-ai/claude-code"
echo ""
echo "# 2. Install Claude Code via Homebrew"
echo "brew install --cask claude-code"
echo ""
echo "# 3. Verify installation"
echo "which claude"
echo "claude --version"
echo ""
echo "# 4. Disable auto-updates (for manual control)"
echo "echo 'export DISABLE_AUTOUPDATER=1' >> ~/.zshrc"
echo "source ~/.zshrc"
echo ""
echo "✅ After running these commands, restart your terminal"
echo ""
echo "Expected result:"
echo "  - claude command points to Homebrew installation"
echo "  - Located at: /opt/homebrew/bin/claude (or similar)"
echo "  - Auto-updates disabled for manual control"
