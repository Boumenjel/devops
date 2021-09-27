   
FROM openjdk:8
EXPOSE 8084
ADD target/spring-boot-docker.war / 
ENTRYPOINT ["java","-war","/spring-boot-docker.war"]
