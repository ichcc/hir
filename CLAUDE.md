# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal CV/portfolio website for Volodymyr Brodskyi, a DevOps/Solution Architect. Static site hosted on Cloudflare Pages via GitHub integration.

## Architecture

- **Static site**: Vanilla HTML + external CSS, no build process
- **`index.html`**: Clean shell with CV content, links to `style.css`
- **`style.css`**: All styles extracted from HTML (theme, responsive, base, print)
- **Dark mode**: CSS custom properties with toggle button, preference saved to localStorage
- **PDF downloads**: Multiple CV formats (1-page, 3-page, 4-page)
- **Deployment**: Push to `main` → Cloudflare Pages auto-deploys to hir.1ng.me

## Key Files

| File | Purpose |
|------|---------|
| `index.html` | Main CV page — content + minimal JS only |
| `style.css` | All CSS (theme, responsive, base, print) |
| `1page_version.md` | 1-page CV markdown (source of truth for short version) |
| `volodymyr_brodskyi_CV.md` | Full 3-page CV markdown (source of truth for site content) |
| `*.pdf` | Generated PDF versions for download |
| `backup/` | Old/superseded files (gitignored) |
| `PLAN-cleanup.md` | Current cleanup plan for Claude CLI |

## Content Workflow

1. Edit markdown source files (`1page_version.md` or `volodymyr_brodskyi_CV.md`)
2. Update HTML content inside `<div id="wrapper">` in `index.html` to match
3. Regenerate PDFs from updated markdown
4. Commit and push — Cloudflare Pages deploys automatically

## Important Rules

- **Never inline CSS** — all styles go in `style.css`
- **No highlight.js** — was removed, CV has no code blocks
- **No build tools** — this is a static site, keep it simple
- **Content source of truth** is the markdown files — `index.html` mirrors them
- **`lang="en"`** in HTML tag (not "IL")
- **Real `mailto:` links** — no Cloudflare email obfuscation

## Session Management

Session tracking system for development work:

### Commands
- `/session-start [name]` - Start a new development session
- `/session-update [message]` - Update current session with progress
- `/session-end [summary]` - End current session with summary
- `/session-current` - Show current active session details
- `/session-list [filter]` - List all sessions with optional filtering
- `/session-help [command]` - Get help with session commands

### Session Files
- Location: `sessions/` directory
- Format: `session-YYYYMMDD-HHMMSS-[name].md`

## Deployment

- **Host**: Cloudflare Pages (hir.1ng.me)
- **Source**: GitHub auto-deployment from `main` branch
- **Process**: `git push origin main` → live in ~30 seconds
