ARG DOCKERNAME=test1
FROM $DOCKERNAME:v2
RUN apt-get update && apt-get -y install curl 
HEALTHCHECK  --interval=5s --timeout=30s  \
CMD curl -v -fs http://localhost/||exit 1
