# docker-chord
run chord in docker

1. build images
sudo bash build.sh

2. deploy chordnetwork in by docker swarm
sudo docker stack deploy -c docker-compose.yml chordnetwork

3. after 15s, scale nodes to as many as your pc can
sudo docker service scale chordnetwork_nodes=100

4. run client  in any container to use chord network
root@c25ad2a4746f:/app/chord/chord# python client.py 10.0.0.11 8091 set --key name --value xiayu
root@c25ad2a4746f:/app/chord/chord# python client.py 10.0.0.11 8091 get --key name
xiayu
