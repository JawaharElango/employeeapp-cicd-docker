#Dockerfile contains all the commands with which
#Docker can build images reading the instructions.

FROM openjdk:11

EXPOSE 8080

ADD target/employeeapp-cicd-docker.jar employeeapp-cicd-docker.jar

#WORKDIR usr/src

ENTRYPOINT ["java","-jar", "employeeapp-cicd-docker.jar"]