# docker build ./ -t ounity/bedag-hello
# docker run -it -p 3000:80 -d ounity/bedag-hello

FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/
