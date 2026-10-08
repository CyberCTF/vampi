# VAmPI

[VAmPI](https://github.com/erev0s/VAmPI) by erev0s: a vulnerable REST API (Flask, OpenAPI 3)
built to test tools and practise the OWASP API Security Top 10. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and the
upstream source in [`app/`](app) builds with its own Dockerfile.

| Machine | Service |
| --- | --- |
| vampi | VAmPI API on port 5000, published on 5002 |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then call http://localhost:5002/createdb to populate the database, and browse the API at
http://localhost:5002/ui/. Tokens expire after 60 seconds. The same spec runs as Docker on a local
VM (`docker-vm`), on a cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: the
[VAmPI README](https://github.com/erev0s/VAmPI#readme) and the OpenAPI specification in
[`app/openapi_specs/`](app/openapi_specs).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as VAmPI ([LICENSE](LICENSE)). This application is deliberately vulnerable: keep it isolated.
