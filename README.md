# nifi1
Dockerfile para fazer a imagem

testando ainda o docker-compose.yml

docker run -it --net=bridge --name meu-mongodb -p 27017:27017 -p 28017:28017 -e MONGODB_PASS="mypass" mongo

mongo -host localhost -port 27017

db.createCollection("produtos")

db.produtos.insert( { "nome_produto":"primeiro Produto", "codigo_produto":"1", "valor_original":"10.00", "valor_desconto":"8.79", "data_inicio":"", "data_fim": new Date(2020,11,11)})

db.produtos.remove({"_id": ObjectId("5fab6c9c73df1bbfb2d2db26")})

docker run -it --net=bridge --name meu-nifi1 -p 8080:8080 -v /Desktop/projeto/docker/nificonf/:/nifi-1.12.1/conf/ marcusprojuris/nifi:1.0

docker run -it --net=bridge --name meu-nifi1 -p 8080:8080 -p 80:80 -v /Users/marcusdemelomoreira/Desktop/projeto/docker/confgit/nifi1/Conf:/nifi-1.12.1/conf/ marcusprojuris/nifi:1.0 

docker run -it --name meu-nifi1 -p 8080:8080 -v "\projeto\nifi1\Conf":/nifi-1.12.1/conf/ marcusprojuris/nifi:1.0

docker build -t marcusprojuris/nifi:1.0 .
