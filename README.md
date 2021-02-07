# Projeto ft_server

O objetico do projeto é criar um servidor LEMP (Linux, Nginx, MySQL e PHP) utilizando um container. Também instalamos o phpMyAdmin e o Wordpress. Não foi prevista a utilização de um volume externo para a persistência dos dados inseridos via Wordpress no banco, logo cada vez que o container é iniciado todo o dado é perdido e partimos do zero.


## Comandos úteis

Cria imagem
```sh
docker build -t server .
```

Cria container
```sh
docker run --name server -dt -p 80:80  -p 443:443 server
```

Executa comando de mudança no autoindex
```sh
docker exec -it server ./root/autoindex.sh
```

Executa comando de forma  entrar no shell do container
```sh
docker exec -it server /bin/bash
```

Para container e deleta o mesmo
```sh
docker stop server && docker rm server
```
