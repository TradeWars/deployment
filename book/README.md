---
description: >-
  A tutorial for setting up and deploying a fully automated continuous
  integration workflow for San Andreas Multiplayer servers.
---

# SA:MP Continuous Deployment

This guide outlines how to achieve a near fully automated San Andreas
Multiplayer server using GitLab/GitHub, TravisCI/GitLab CI and Docker.

By the end of reading this, you will be able to update your running server
simply by pushing commits to the `master` branch of your gamemode's repository
without ever needing to use:

- SSH
- FTP
- A web-based control panel
- RCON

Not only will this deployment strategy improve your development productivity, it
will also give you the opportunity to learn industry standard practices and
transferrable skills that you can apply to non-SA:MP applications such as
websites, apps and API servers.

Does that sound tantalising? Read on!
