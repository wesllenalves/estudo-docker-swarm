# estudo-docker-swarm

comandos:

comando para criar o cluster swarm:
    docker swarm init --advertise-addr [ip da maquina] (pega o comando exibido para criar os works)

comandos para vizualizar os nodes:
    docker node list

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

docker swarm join --token SWMTKN-1-0qor4emmptfiktes075qlfktksa2ubf324kgddirvh2sa9dq2y-25rilcpk8ytlrlgxtdncnqi0d 192.168.121.243:2377