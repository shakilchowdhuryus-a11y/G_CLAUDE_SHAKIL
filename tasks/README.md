# Scheduled tasks

Each `*.md` file here is a standalone prompt for a scheduled task that starts a
**fresh session** on every run (no growing context = low tokens).

Rules for a task prompt:
1. One job, one output. State the exact deliverable and where it goes.
2. Under ~15 lines. Name files/paths directly so the run doesn't search.
3. End with a done-check ("done when X exists / PR opened / report sent").

Copy `_template.md`, fill it in, then ask Claude: "schedule tasks/<name>.md <when>".
