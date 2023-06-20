# estudo-docker-swarm

comandos:

comando para criar o cluster swarm:
    docker swarm init --advertise-addr (pega o comando exibido para criar os works)

comando para promover um node para manager ou eleger um de backup:
    docker node promote [nome do node]

comando para deploy de serviços:
    docker stack deploy -c docker-compose.yml site ("docker-compose.yml" é o nome do documento docker. "site" é o nome do serviço)

adicionar replicas ao cluster:
    docker service update --replicas=22 my_redis

remover nodes:
    docker node rm (id)


Descobrir o token de gerencia do cluster:
    docker swarm join-token manager

docker service update --force site_site

