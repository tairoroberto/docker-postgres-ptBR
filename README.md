# Postgres para e-cidade

# Tags disponíveis
- [2.3.46], [2.3.46-demo], [latest]

Definição do container docker para o banco de dados postgres, com estrutura do sistema e-cidade

# Sobre o e-cidade
O e-cidade destina-se a informatizar a gestão dos Municípios Brasileiros de forma integrada. Esta informatização contempla a integração entre os entes municipais: Prefeitura Municipal, Câmara Municipal, Autarquias, Fundações e outros.

**Este não é um repositório oficial**. Para maiores informações, acesse: https://softwarepublico.gov.br/social/e-cidade/

# Como utilizar esta imagem

### Estrutura limpa
```sh
$ docker run --name <nome> -d -p 5432:5432 -e POSTGRES_USER=ecidade -e POSTGRES_DB=e-cidade edsondewes/postgres-ecidade
```

### Estrutura preenchida com dados de exemplo
```sh
$ docker run --name <nome> -d -p 5432:5432 -e POSTGRES_USER=ecidade -e POSTGRES_DB=e-cidade edsondewes/postgres-ecidade:2.3.46-demo
```

_*** Os scripts de criação da estrutura e dados serão executados após a criação do container. Este processo pode demorar alguns minutos. Você pode acompanhar o andamento verificando os logs do container:_

```sh
$ docker logs <container>
```

# Variáveis de ambiente

### POSTGRES_USER
Parâmetro *obrigatório*. Nome do usuário que será criado e utilizado para acesso ao e-cidade. Caso não seja preenchido, a estrutura não será criada corretamente.

### POSTGRES_DB
Parâmetro *obrigatório*. Nome do banco de dados que será criado para o e-cidade. Caso não seja preenchido, a estrutura não será criada corretamente.

### Variáveis da imagem oficial Postgres
É possível configurar outras variáveis do postgres. Para maiores informações, visite o repositório oficial: https://hub.docker.com/_/postgres/

[2.3.46]: <https://github.com/edsondewes/docker-postgres-ecidade/blob/master/Dockerfile>
[2.3.46-demo]: <https://github.com/edsondewes/docker-postgres-ecidade/blob/2.3.46-demo/Dockerfile>
[latest]: <https://github.com/edsondewes/docker-postgres-ecidade/blob/master/Dockerfile>