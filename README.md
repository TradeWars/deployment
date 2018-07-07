# Trade Wars Deployment

This repository holds the necessary configuration files for performing a full
production deployment of the Trade Wars stack. This includes the gamemode and
all additional services that it depends on.

Deployment uses Docker Compose and also makes use of
[Watchtower](https://github.com/v2tec/watchtower) for automatic restarts when
new versions of dependencies are available. In future, this will be modified or
built upon to provide a graceful restart cycle that ensures players and
operators are notified of an incoming restart and given a grace period as well
as a way to cancel a restart.

## Usage

_coming soon!_
