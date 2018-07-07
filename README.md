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

To perform a deployment, you must clone this repository to your local machine
and `cd` into it. Once you've done that, proceed with the deployment commands
detailed below.

### Environment

First, you must declare whether you are deploying to a development environment
or a production environment.

Environments are defined in "env-files". The environment that will be used by
the deployment is stored in the file named `.env`. This doesn't exist on the
repository because it may contain sensitive information. Deployment is split
between environments by storing configuration variables in a `.env` file either
called `dev.env` or `prod.env` which is then copied to a "live file" named
simply `.env` which is used by the `docker-compose` command. The `dev.env` file
is included in this repository because it contains simple database credentials.

If you are deploying a development environment, you already have the `dev.env`
file so all you need to do is run the following command that will simply copy
`dev.env` to the live file `.env`:

```bash
make dev
```

But if you are deploying to production, you must first manually create the file
`prod.env` which must contain all necessary environment variables. Copy the
`dev.env` file and change each variable appropriately:

- **ALWAYS** generate long, strong, complex passwords
- **NEVER** re-use passwords across deployments
- **ALWAYS** store passwords in a safe location
- **NEVER** commit sensitive credentials to source control

Once you've done that, run the following command to set the live `.env` file to
the production settings:

```bash
make prod
```

### Deployment

Once the environment has been set up and `.env` contains your target variables,
you can deploy the entire stack with:

```bash
make up
```

This simply runs `docker-compose up` with any necessary options.
