FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/ThoughtWorksInc/infra-problem.git

FROM clojure:lein
ARG NEWSFEED_SERVICE_URL
ARG STATIC_URL
ARG QUOTE_SERVICE_URL
RUN apt-get update && apt-get install -y \
    python3 procps
RUN mkdir -p /app
WORKDIR /app
COPY --from=clone /app/infra-problem /app
RUN apt-get update && apt-get install make
RUN make libs && make clean all

# Environment variables
ENV APP_PORT=8080
ENV NEWSFEED_SERVICE_URL="${NEWSFEED_SERVICE_URL}"
ENV STATIC_URL="${STATIC_URL}}"
ENV QUOTE_SERVICE_URL="${QUOTE_SERVICE_URL}}"
ENV NEWSFEED_SERVICE_TOKEN="T1&eWbYXNWG1w1^YGKDPxAWJ@^et^&kX"
EXPOSE 8080
EXPOSE 8000
COPY ./docker-entrypoint.sh /app
ENTRYPOINT ["./docker-entrypoint.sh"]
