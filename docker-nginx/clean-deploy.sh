docker container stop sample-nginx
docker container rm sample-nginx 
docker rmi image sample-nginx  
docker build -t sample-nginx .  
docker run --name sample-nginx -d -p 8448:443 sample-nginx

