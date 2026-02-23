# Session Update Command

This command updates the current active development session with progress and changes.

## Usage
```
/session-update [update-message]
```

## What it does:
1. Finds the current active session file
2. Appends new progress entry with timestamp
3. Records current git changes since last update
4. Updates todo status and completed tasks
5. Captures any new developments or insights

## Implementation:
- Read `.current-session` to find active session
- Append to the Progress Log section of the session file
- Include git diff summary since last update
- Record any todo items completed or added
- Add timestamp for each update entry

## Update Entry Format:
```markdown
### Update - [Timestamp]
**Message**: [update-message or auto-generated summary]

**Changes**:
- Git status: [files changed/added/deleted]
- Key modifications: [summary of changes]

**Progress**:
- Completed: [completed todo items]
- In Progress: [current work]
- Next: [upcoming tasks]

**Notes**: [any additional context or decisions made]

---
```

## Auto-generated Updates:
- If no message provided, generates summary based on:
  - Recent git changes
  - Todo list status changes
  - Files modified since last update