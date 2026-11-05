FROM maven
WORKDIR /app
COPY . .
RUN mvn package
RUN mv target/*.jar App.jar
ENTRYPOINT ["java", "-jar", "App.jar"]
EXPOSE 9090
