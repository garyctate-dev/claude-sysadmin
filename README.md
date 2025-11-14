# claude-sysadmin

System administration toolkit for managing AI CLI tools via Homebrew.

## Philosophy

**Single package manager, infrastructure as code, minimal maintenance overhead.**

## Tools Managed

- **Claude Code** - AI coding assistant
- **OpenAI Codex** - AI coding agent
- **OpenCode** - Multi-provider AI coding agent
- **Gemini CLI** - Google's AI assistant (npm until Homebrew stable)

## Quick Start

### Initial Setup

```bash
# 1. Install tools via Brewfile
cd ~/Development/github/claude-sysadmin
brew bundle install

# 2. Migrate existing tools
./scripts/migrate-tools.sh

# 3. Migrate Claude Code (MANUAL - run in separate terminal)
cat ./scripts/migrate-claude.sh
# Copy commands and run in regular terminal
```

### Weekly Maintenance

```bash
# Update all AI CLI tools
~/Development/github/claude-sysadmin/scripts/update.sh
```

## File Structure

```
claude-sysadmin/
├── Brewfile                    # AI CLI tools inventory
├── README.md                   # This file
├── scripts/
│   ├── migrate-tools.sh        # Automated migration
│   ├── migrate-claude.sh       # Manual Claude migration steps
│   └── update.sh              # Weekly update routine
└── .gitignore
```

## Best Practices

### Updates
- **Frequency**: Weekly (set calendar reminder)
- **Auto-updates**: Disabled (`DISABLE_AUTOUPDATER=1`) for manual control
- **Command**: `~/Development/github/claude-sysadmin/scripts/update.sh`

### Version Control
- Brewfile is version controlled
- Changes tracked via git
- Disaster recovery: clone repo, run `brew bundle install`

### Package Manager Policy
- **Homebrew**: System-level CLI tools (Claude, Codex, OpenCode)
- **npm**: Node.js packages only (temporary for Gemini CLI)
- **Never mix**: Stick to one manager per tool

## Disaster Recovery

On new machine:
```bash
# 1. Clone this repo
git clone https://github.com/garyctate-dev/claude-sysadmin.git ~/Development/github/claude-sysadmin

# 2. Install everything
cd ~/Development/github/claude-sysadmin
brew bundle install

# 3. Configure environment
echo 'export DISABLE_AUTOUPDATER=1' >> ~/.zshrc
source ~/.zshrc
```

## Migration Notes

### From npm to Homebrew

**Why?**
- Single package manager (less cognitive load)
- Infrastructure as code (reproducible)
- Better permission handling (no sudo)
- Rollback capability

**Trade-offs:**
- Manual updates required (but single command)
- May lag npm releases by hours/days

### Claude Code Special Case

Claude Code must be migrated manually in a separate terminal (not inside Claude Code session) to avoid self-uninstallation.

See `scripts/migrate-claude.sh` for commands.

## Maintenance Schedule

- **Weekly**: Run `update.sh`
- **Monthly**: Review Brewfile, clean unused tools
- **Quarterly**: Check for new Homebrew formulae (e.g., Gemini CLI)

## Troubleshooting

### Tool not found after update
```bash
# Refresh shell environment
source ~/.zshrc
# or restart terminal
```

### Homebrew issues
```bash
brew doctor
brew cleanup
```

### Version conflicts
```bash
# Check installation location
which claude
which codex
which opencode
which gemini

# Should point to Homebrew paths:
# /opt/homebrew/bin/* or /usr/local/bin/*
```

## Contributing

This is a personal sysadmin toolkit. Customize for your environment.

## Author

Gary Tate (@garyctate-dev)
Consultates | Hong Kong
