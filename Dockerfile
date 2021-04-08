FROM nginx:1.19.9-alpine

# Copy custom files
COPY default.conf /etc/nginx/conf.d/

#NGINX DAEMON
CMD ["nginx", "-g", "daemon off;"]


