FROM openjdk:11
RUN mkdir /app
#copy Jar complied to image /app folder
COPY target/*.jar /app
WORKDIR  /app
CMD java -jar FoodDelivery-0.0.1-SNAPSHOT.jar --server.port=8082

#FROM openjdk:11
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} fdsdocker.jar
#ENTRYPOINT ["java", "-jar", "/fdsdocker.jar"]
