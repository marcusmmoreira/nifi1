# nifi1
Dockerfile para fazer a imagem

testando ainda o docker-compose.yml

docker run -it --name meu-nifi1 -p 8080:8080 -v /Users/marcusdemelomoreira/Desktop/projeto/docker/nificonf/:/nifi-1.12.1/conf/ marcusprojuris/nifi:1.0

docker build -t marcusprojuris/nifi:1.0 .
