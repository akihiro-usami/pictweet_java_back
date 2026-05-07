FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY . .
RUN chmod +x ./gradlew
RUN ./gradlew build -x test
CMD java -jar -Dserver.port=${PORT:-8080} build/libs/pictweet-0.0.1-SNAPSHOT.jar
