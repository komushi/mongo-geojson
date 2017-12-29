mongoimport --db geojson --collection blocks --type json --file "home/tokyo_23_brief_mongo.json";

mongo localhost:27017/geojson /home/init.js