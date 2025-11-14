# claude-sysadmin

Sysadmin toolkit for managing AI CLI tools via Homebrew.

## Repository
- **Account**: garyctate-dev (development/internal)
- **SSH**: `git@garyctate-dev-github:garyctate-dev/claude-sysadmin.git`

## Maintenance Commands

**Weekly Update** (run every week):
```bash
~/Development/github/claude-sysadmin/scripts/update.sh
```

**Migration Scripts**:
```bash
# Migrate tools (automated)
~/Development/github/claude-sysadmin/scripts/migrate-tools.sh

# Migrate Claude Code (manual - run in separate terminal)
cat ~/Development/github/claude-sysadmin/scripts/migrate-claude.sh
```

## Philosophy
Single package manager, infrastructure as code, minimal overhead.

## Conventions
- Homebrew for all CLI tools (except Gemini CLI on npm temporarily)
- Auto-updates disabled (manual control via update.sh)
- Weekly maintenance schedule
