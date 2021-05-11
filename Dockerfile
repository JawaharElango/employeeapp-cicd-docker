#Dockerfile contains all the commands with which
#Docker can build images reading the instructions.

FROM openjdk:11

ADD ./target/employeeapp-2.4.5.jar /usr/src/employeeapp-2.4.5.jar

WORKDIR usr/src

ENTRYPOINT ["java","-jar", "employeeapp-2.4.5.jar"]