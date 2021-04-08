FROM nginx:1.19.9-alpine

# Custom healthz location for readiness and liveness
RUN mkdir /usr/share/nginx/html/healthz 

# Copy custom files
COPY server.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/
COPY --chown=755:755 healthz.html /usr/share/nginx/html/healthz

#NGINX DAEMON
CMD ["nginx", "-g", "daemon off;"]
