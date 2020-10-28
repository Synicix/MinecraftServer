FROM openjdk:16-slim-buster
RUN apt-get update &&\
    apt-get install wget -y &&\
    wget https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar -P /src &&\
    echo eula=true > /src/eula.txt

WORKDIR /src
CMD java -Xmx1024M -Xms1024M -jar server.jar nogui