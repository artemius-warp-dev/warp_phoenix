# warp_phoenix

A minimal Phoenix JSON API used as a template for **containerised Elixir
releases**: a multi-stage `Dockerfile` builds a `mix release` on Alpine and ships
only the release in the final image.

```
GET /api/hello  →  {"message": "Hello world!"}
```

```sh
mix deps.get && mix phx.server        # locally
docker build -t warp_phoenix .        # as a release image
docker run -p 4000:4000 -e SECRET_KEY_BASE=$(mix phx.gen.secret) warp_phoenix
```
