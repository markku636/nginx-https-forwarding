FROM nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY upstream.conf /etc/nginx/conf.d/upstream.conf
COPY ibuypower.crt /etc/nginx/ibuypower.crt
COPY ibuypower.key /etc/nginx/ibuypower.key