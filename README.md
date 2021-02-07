# 42_ft_server

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
