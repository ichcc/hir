# Session End Command

This command ends the current active development session and creates a comprehensive summary.

## Usage
```
/session-end [optional-summary-message]
```

## What it does:
1. Finds the current active session file
2. Generates a final session summary
3. Records final git status and all changes made during session
4. Summarizes completed todos and accomplishments
5. Clears the `.current-session` tracker
6. Archives the session file

## Implementation:
- Read `.current-session` to find active session
- Append final summary to the session file
- Calculate session duration
- Summarize all git changes made during the session
- List all completed todos and progress
- Clear `.current-session` file
- Optional: Move session to archived sessions folder

## Final Summary Format:
```markdown
## Session Summary - [End Timestamp]
**Duration**: [start time] - [end time] ([total duration])

**Final Message**: [summary-message or auto-generated]

**Accomplishments**:
- [List of completed todos]
- [Key features implemented]
- [Files created/modified]

**Git Changes**:
- Files modified: [count]
- Lines added: [count]
- Lines removed: [count]
- Commits made: [list of commit messages]

**Final State**:
- Git status: [clean/uncommitted changes]
- Branch: [current branch]
- Next steps: [any remaining todos or notes]

**Session Statistics**:
- Duration: [HH:MM]
- Updates made: [count]
- Goals achieved: [X/Y]

---
**Session Ended**: [timestamp]
```

## Post-Session Actions:
- Clear active session tracker
- Optional commit with session summary
- Prepare for next session