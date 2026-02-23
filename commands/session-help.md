# Session Help Command

This command provides comprehensive help for the session management system.

## Usage
```
/session-help [command-name]
```

## Available Commands:

### 📋 Session Management
- **`/session-start [name]`** - Start a new development session
- **`/session-update [message]`** - Update current session with progress
- **`/session-end [summary]`** - End current session with summary
- **`/session-current`** - Show current active session details
- **`/session-list [filter]`** - List all sessions with optional filtering

### 🚀 Quick Start Guide

1. **Start a session**: `/session-start cv-improvements`
2. **Work on your project** (make changes, commit code, etc.)
3. **Update progress**: `/session-update "Added new skills to CV"`
4. **Check status**: `/session-current`
5. **End session**: `/session-end "Successfully updated CV content"`

### 📁 File Structure
```
/
├── commands/           # Session command definitions
│   ├── session-start.md
│   ├── session-update.md  
│   ├── session-end.md
│   ├── session-current.md
│   ├── session-list.md
│   └── session-help.md
│
└── sessions/          # Session tracking files
    ├── .current-session
    └── session-*.md
```

### 🎯 Best Practices

**Starting Sessions**:
- Use descriptive names: `cv-mobile-fixes`, `pdf-updates`
- Set clear goals at the beginning
- Review project status before starting

**During Sessions**:
- Update progress regularly with `/session-update`
- Keep commit messages clear and descriptive  
- Track todos and completed work

**Ending Sessions**:
- Provide meaningful summary
- Note any remaining work or next steps
- Review accomplishments

### 💡 Tips

- **Continuity**: Sessions help maintain context across different work periods
- **Documentation**: Automatic tracking of git changes and progress
- **Productivity**: Clear goals and progress tracking boost efficiency
- **Knowledge Transfer**: Session logs help when returning to work later

### 🔧 Session File Example
```markdown
# Session: cv-improvements - 2025-08-27

## Session Info
- Started: 2025-08-27 14:30:22
- Project: CV Website (hir.1ng.me)
- Branch: main

## Goals
- Update skills section with new technologies
- Improve mobile responsiveness
- Generate new PDF version

## Progress Log
### Update - 14:45
Added Azure SQL, AKS, Linux to skills section
...
```