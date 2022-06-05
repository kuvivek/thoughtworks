FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/ThoughtWorksInc/infra-problem.git

FROM clojure:openjdk-8-lein-slim-buster as build
WORKDIR /app
COPY --from=clone /app/infra-problem /app
RUN apt-get update && apt-get install make
RUN make libs && make clean all

FROM clojure:lein
RUN mkdir -p /app/resources
WORKDIR /app
COPY --from=clone /app/infra-problem/ /app
RUN apt-get update && apt-get install make
RUN make libs && make clean all

ENV APP_PORT=8002
CMD ["java", "-jar", "/app/build/quotes.jar"]
EXPOSE 8002
