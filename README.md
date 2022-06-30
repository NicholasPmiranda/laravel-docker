
# Laravel 9.x 

## Rodar o Laravel

Crie o Arquivo .env
```sh
cp .env.example .env
```

Suba os containers do projeto
```sh
docker-compose up -d
```


Acesse o container app
```sh
docker-compose exec app bash
```

Instalar as dependências do projeto
```sh
composer install
```

Acesse o projeto
[http://localhost:8000](http://localhost:8000)
