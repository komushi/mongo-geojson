FROM mongo:3.4

ADD mongodb_data/tokyo_23_brief_mongo.json /home/
ADD mongodb_data/init.js /home/
ADD mongodb_data/init.sh /docker-entrypoint-initdb.d/

ENV MONGO_INITDB_ROOT_USERNAME root
ENV MONGO_INITDB_ROOT_PASSWORD keepitsimple
ENV MONGO_INITDB_DATABASE geojson