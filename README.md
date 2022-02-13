# Query com vários JOINS ou várias queries?

O que é melhor em termos de performance e manutenção?

Esse repositório faz parte de um vídeo que busca
demonstrar na prática um benchmark de performance
e também questões de manutenção de código!

Link do vídeo: https://youtu.be/QhWm5-PMIH8

## Como executar?

- Clone o repositório
- Configure as credenciais do banco de dados no config.php
- Executa a aplicação em seu computador diretamente ou via docker

**Executar ambiente docker**

```shell
sudo chmod 777 -R ./docker

docker-compose up -d
```

## Comando usado para o benchmark

**Teste da query grande**
```shell
ab -n 3000 -c 50 -k http://localhost:8000/join.php
```


**Teste de várias queries**
```shell
ab -n 3000 -c 50 -k http://localhost:8000/queries.php
```


## Resultado

É possível observar que várias queries menores, além
de facilitar a manutenção do código, também são mais
performáticas, tendo um tempo de resposta muito menor

**Tempo médio de respostas**

**Vários joins** 95.682 [ms]

Requests per second:    522.56 [#/sec] (mean)

Time per request:       95.682 [ms] (mean)


**Várias queries**

Requests per second:    981.85 [#/sec] (mean)

Time per request:       50.924 [ms] (mean)

