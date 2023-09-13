FROM nginx:latest
RUN apt-get update && apt-get install -y git
RUN rm -rf /usr/share/nginx/html/*
RUN git clone https://github.com/alxcreate/alxcreate.github.io /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
