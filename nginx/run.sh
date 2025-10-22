docker run -d \
  --name nginx \
  -p 80:80 \
  -v $(pwd)/nginx/nginx.conf:/etc/nginx/nginx.conf \
  -v $(pwd)/nginx/conf.d:/etc/nginx/conf.d \
  nginx
