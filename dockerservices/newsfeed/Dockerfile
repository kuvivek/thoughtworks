FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/ThoughtWorksInc/infra-problem.git

FROM clojure:lein
RUN mkdir -p /app/resources
WORKDIR /app
COPY --from=clone /app/infra-problem/ /app
RUN apt-get update && apt-get install make
RUN make libs && make clean all

ENV APP_PORT=8001
CMD ["java", "-jar", "/app/build/newsfeed.jar"]
EXPOSE 8001