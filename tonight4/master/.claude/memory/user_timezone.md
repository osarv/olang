The user lives in Gothenburg: give every time in reports as Swedish local time - CEST (UTC+2) until 2026-10-25, CET
(UTC+1) after - written like "15:10 CEST".

The user, 2026-10-09: "For time use CEST instead. That's the Stockholm one, I live in Gothenburg. That way I don't have
to convert it in my head manually every time."

**How to apply:** convert before writing to the user (Europe/Stockholm). Tools still speak UTC (send_later `at`,
rate_limit_event `resetsAt`, cron fields - though create_trigger accepts `CRON_TZ=Europe/Stockholm`); convert at the
boundary. Older entries in memory and CLAUDE.md written in UTC stay as they are.
