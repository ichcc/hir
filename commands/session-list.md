# Session List Command

This command lists all development sessions for the project.

## Usage
```
/session-list [optional-filter]
```

## What it does:
1. Scans the `sessions/` directory for all session files
2. Displays a formatted list of sessions with key details
3. Shows session status (active, completed, archived)
4. Optionally filters by date, name, or status

## Implementation:
- Read all files in `sessions/` directory
- Parse session metadata from each file
- Sort by date (most recent first)
- Display in formatted table or list

## Output Format:
```
Development Sessions for CV Website Project

📍 ACTIVE SESSION:
  • session-20250827-143022-cv-updates.md
    Started: 2025-08-27 14:30:22
    Duration: 45min (ongoing)
    Last update: 3 minutes ago

📋 RECENT SESSIONS:
  1. session-20250826-091500-mobile-fixes.md
     ✅ Completed | Duration: 2h 15min
     Goals: Mobile responsiveness, PDF updates
     
  2. session-20250825-160000-theme-toggle.md  
     ✅ Completed | Duration: 1h 30min
     Goals: Dark mode implementation
     
  3. session-20250824-130000-content-update.md
     ✅ Completed | Duration: 45min
     Goals: CV content updates

📊 STATISTICS:
  • Total sessions: 4
  • Total development time: 4h 30min
  • Average session length: 1h 8min
  • Active session: Yes
```

## Filter Options:
- `today` - Sessions from today
- `week` - Sessions from this week  
- `completed` - Only completed sessions
- `active` - Only active session
- `[date]` - Sessions from specific date