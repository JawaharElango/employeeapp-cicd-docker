#Dockerfile contains all the commands with which
#Docker can build images reading the instructions.

FROM openjdk:11

ADD ./target/employeeapp-0.0.2-SNAPSHOT.jar /usr/src/employeeapp-0.0.2-SNAPSHOT.jar

WORKDIR usr/src

ENTRYPOINT ["java","-jar", "employeeapp-0.0.2-SNAPSHOT.jar"]