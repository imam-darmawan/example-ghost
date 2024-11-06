FROM ghost:5-alpine
# Here, we use the Ghost CLI to set some pre-defined values.
RUN set -ex; \
    su-exec node ghost config database.client sqlite3; \
    su-exec node ghost config database.connection.filename $GHOST_INSTALL/content/data/ghost.db; \
    su-exec node ghost config mail.transport "Direct";
