# CLAUDE.md — lean operating rules

Goal: maximum output, minimum tokens. Every session in this repo follows these rules.

## Working style
- Act, don't narrate. No restating the request, no option surveys, no recap of what the diff already shows.
- Read only what you need: `grep`/`sed -n` ranges over whole-file reads. Never re-read a file you just edited.
- Batch independent tool calls in one turn. No subagents unless the user asks.
- Replies: short, plain, results first. Code in files, not in chat.
- Stop when the task's acceptance check passes. No extra polish unasked.

## Repo layout
- `tasks/` — one self-contained prompt per recurring job (see `tasks/README.md`).
- `scripts/setup.sh` — idempotent dependency install; run once per fresh container.
- `projects/` — product code, one folder per project.

## Git
- Work on a `claude/<topic>` branch, push, open a draft PR. Never commit secrets.
