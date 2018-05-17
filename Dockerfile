FROM openjdk:8

WORKDIR /db

COPY dynamodblocal-bin ./

EXPOSE 5200

CMD java -Djava.library.path=DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb  -port 5200

