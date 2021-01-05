# simple-k8s-minecraft-server
A simple kubernetes deployment of a minecraft server

This project works well for a simple deployment, such as a DIY homelab setup, where you'd like to run a minecraft server on a kubernetes cluster. This deploys the latest [itzg/minecraft-server](https://hub.docker.com/r/itzg/minecraft-server), which is a Java Edition Minecraft server. By running this engine in a container, it offers better isolation from its host filesystem and networking. And by running it on kubernetes, it provides a declartative deployment and rohbustness features, such as liveness probes.

To run this deployment on the kubernetes cluster, simply:
```
kubectl apply -f minecraft-server.yaml
```

**Note**, This minecraft server deployment currently assumes it's persistent data is kept in the ```/volumes/minecraft-home/server``` host directory.  And the web-client is currently explosed through a cluster ```nodePort: 25565```
