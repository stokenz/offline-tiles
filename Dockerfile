FROM caddy:builder-alpine AS builder

RUN xcaddy build --with github.com/protomaps/go-pmtiles/caddy

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile

EXPOSE 8080
