docker rm -f minecraft-server

docker run -it --rm --name minecraft-server \
           -e DIFFICULTY=easy \
           -e ALLOW_NETHER=true \
           -e MODE=creative \
           -e LEVEL=testserver \
           -e EULA=TRUE \
           -v /volumes/minecraft-home/server:/data \
           -p 25565:25565 \
           itzg/minecraft-server 

