## Mailpit with docker-compose

### Install notes

- copy `.env.example` to `.env` and edit it to match your settings
- if necessary modify `docker/nginx/custom.conf` to match you `DOMAIN_HOST`
- run `docker-compose up -d` to bring up containers
- navigate to `DOMAIN_HOST` to see mail

### Connect to mailpit

- add as mail host `localhost` from outside docker container or `host.docker.internal` from inside docker container
- add as mail port `MAILPIT_PORT`

## Dependencies

- `nginx-proxy` - https://github.com/ionghitun/nginx-proxy

_Happy Coding!_
