FROM nginx:1.15.9

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.orig

COPY default.conf /etc/nginx/conf.d/

# ビルド完了後にNginxを起動
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf