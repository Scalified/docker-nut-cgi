FROM httpd

ENV LISTEN_HOST="0.0.0.0"
ENV LISTEN_PORT="8080"
ENV ADMIN_EMAIL="admin@localhost"

RUN apt update \
    && apt install -y --no-install-recommends \
        curl \
        nut-cgi \
    && apt clean && rm -rf /var/lib/apt/lists/*

RUN apt show nut-cgi

COPY rootfs /

RUN cp /etc/nut/hosts.conf /etc/nut/hosts.conf.template
RUN chmod a+r /etc/nut/*

ENTRYPOINT ["/usr/local/bin/entrypoint"]

CMD ["httpd-foreground"]
