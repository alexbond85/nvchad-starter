# octo.nvim — PR Review Guide

> `<localleader>` defaults to `\` unless you set it. All bindings below use `\` as the prefix.

---

## 1. Open a PR

```
:Octo pr list          " browse all open PRs for the current repo
:Octo pr edit 123      " open PR #123 directly
```

Inside the PR buffer you see the description, reviewers, labels, etc.

---

## 2. Start a Review

```
:Octo review start
```

This opens a panel on the left listing all changed files, with a diff view on the right.

---

## 3. Navigate Between Files

| Key    | Action                          |
|--------|---------------------------------|
| `]q`   | Next changed file               |
| `[q`   | Previous changed file           |
| `]u`   | Next **unviewed** file          |
| `[u`   | Previous unviewed file          |
| `<CR>` | Open file under cursor (in panel) |

---

## 4. Navigate Within a File

| Key    | Action                    |
|--------|---------------------------|
| `]c`   | Next comment/thread       |
| `[c`   | Previous comment/thread   |
| `]t`   | Next thread               |
| `[t`   | Previous thread           |

---

## 5. Add Comments

**Single line** — place cursor on the line, then:
```
\ca    " add a comment on that line
```

**Range comment** — select lines in visual mode, then:
```
\ca    " add a comment on the selected range
```

**Suggestion** (proposes a code change inline):
```
\sa    " add a suggestion on current line/selection
```

**Reply to a thread** — cursor inside a thread:
```
\cr    " reply to the thread
```

**Delete your comment:**
```
\cd
```

---

## 6. Review Pending Comments

```
:Octo review comments    " list all pending (unsaved) comments
```

---

## 7. Submit the Review

```
:Octo review submit
```

A prompt appears — pick with `<C-m>`, `<C-a>`, or `<C-r>`:

| Key     | Action           |
|---------|------------------|
| `<C-m>` | Comment only     |
| `<C-a>` | Approve          |
| `<C-r>` | Request changes  |

**Discard** everything and start over:
```
\vd    " or :Octo review discard
```

---

## 8. Post a General PR Comment

From the PR description buffer (not inside a review diff):

```
:Octo comment add    " or \ca while cursor is in the PR buffer
```

A text buffer opens — type your comment, then `:w` to post it.

---

## 9. Other Useful Actions (in any PR buffer)

| Key / Command              | Action                        |
|----------------------------|-------------------------------|
| `<C-b>`                    | Open PR in browser            |
| `<C-y>`                    | Copy PR URL to clipboard      |
| `<C-r>`                    | Reload buffer                 |
| `:Octo pr diff`            | Show full PR diff             |
| `:Octo pr merge`           | Merge (merge/rebase/squash)   |
| `:Octo label add <label>`  | Add a label                   |
| `:Octo assignee add <user>`| Assign a reviewer             |
| `:Octo reaction +1`        | Add 👍 reaction               |

---

## Quick Cheatsheet

```
:Octo pr list             browse PRs
:Octo review start        start review → file panel + diff opens
]q / [q                   next/prev changed file
]u / [u                   next/prev unviewed file
\ca (normal/visual)       add comment / range comment
\sa                       add suggestion
\cr                       reply to thread
]c / [c                   jump between comment threads
:Octo review submit       submit → C-a approve, C-r req changes, C-m comment
```
