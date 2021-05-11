#Dockerfile contains all the commands with which
#Docker can build images reading the instructions.

FROM openjdk:11

EXPOSE 8080

ADD target/employeeapp-2.4.5.jar employeeapp-2.4.5.jar

#WORKDIR usr/src

ENTRYPOINT ["java","-jar", "employeeapp-2.4.5.jar"]