# NUT CGI Docker Image

[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/Scalified/docker-nut-cgit/blob/master/LICENSE)
[![Docker Pulls](https://img.shields.io/docker/pulls/scalified/nut-cgi.svg)](https://hub.docker.com/r/scalified/nut-cgi)
[![Release](https://img.shields.io/github/v/release/Scalified/docker-nut-cgi?style=flat-square)](https://github.com/Scalified/docker-nut-cgi/releases/latest)

## Overview

**Docker** image with [NUT](https://networkupstools.org/) CGI UI served by **Apache HTTPD** server

## Usage

```bash
docker run \
    --name nut-cgi \
    -e "LISTEN_HOST=0.0.0.0" \
    -e "LISTEN_PORT=8080" \
    -e "ADMIN_EMAIL=admin@example.com" \
    -e "MONITOR_HOSTS=EATON:eaton@localhost;CYBERPOWER:cyberpower@localhost" \
    --restart always \
    scalified/nut-cgi
```

| Environment Variable      | Description                                                     | Default           |
|---------------------------|-----------------------------------------------------------------|-------------------|
| LISTEN_HOST               | HTTPD listen host                                               | `0.0.0.0`         |
| LISTEN_PORT               | HTTPD listen port                                               | `8080`            |
| ADMIN_EMAIL               | Administrator's email                                           | `admin@localhost` |
| MONITOR_HOSTS             | Semicolon-separated list of NUT hosts to monitor (`hosts.conf`) | ""                |

## Health Endpoint

 `/health`

---

**Made with ❤️ by [Scalified](http://www.scalified.com)**
