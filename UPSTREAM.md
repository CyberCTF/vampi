# Upstream

| | |
| --- | --- |
| Project | VAmPI |
| Repository | https://github.com/erev0s/VAmPI |
| Version | master (2026-04-07) |
| Commit | f16052dce83f05847133ec98f01c5193a41de7d8 |
| Licence | MIT |

`app/` is that commit, unchanged, without its Git history (VAmPI publishes no releases, so this is
the default branch). It builds with its own Dockerfile, as is: the vulnerable configuration
(`vulnerable=1`) with a token lifetime of 60 seconds. Upstream's compose file also runs a secure
instance for comparison; this lab runs the vulnerable one only. To update, replace `app/` with a
newer commit, then change this table.
