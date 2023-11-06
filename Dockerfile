ARG GREMLIN_VERSION=3.6.2
FROM tinkerpop/gremlin-server:${GREMLIN_VERSION}

USER root

COPY conf /opt/gremlin-server/conf_local
RUN chown -R gremlin:gremlin /opt/gremlin-server

USER gremlin

EXPOSE 8182

CMD ["./conf_local/gremlin-server.yaml"]
