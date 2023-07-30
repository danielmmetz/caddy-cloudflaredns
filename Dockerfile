FROM caddy:2.7.0-beta.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.7.0-beta.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
