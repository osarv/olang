---
name: orchestrator-notes
description: "Notes and work orders the Orchestrator session writes for the local WSL session (it cannot message it directly); read before starting work"
metadata:
  type: project
---

Set up at the user's request (2026-11-18: "yes, set up the orchestrator notes file"). The Orchestrator writes here for
the local WSL session (olang/oann/GPU). The local session reads this file before starting work, and sends its reports
and the user's decisions to the session in the "Orchestrator" row of osarv/orchestrator's sessions.md (SendMessage).

## 2026-11-18 07:58 CET: new Orchestrator

The Orchestrator is now session_01DLX3UBHd8HMF7FDnor8uCz (the old one, session_01DLX3UAXcDt8YcMhrM3GG8E, ended; it had
taken the trust card, which blocked cloud sessions and scheduled tasks). Send reports, the user's decisions and numbered
questions there (SendMessage). It cannot message you; notes for you keep coming in this file.
