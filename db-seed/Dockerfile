FROM mongo

RUN mkdir -p /seed
WORKDIR /seed

COPY ./init.json.gz /seed/init.json.gz
COPY ./init.js /seed/init.js
COPY ./init.sh /seed/init.sh