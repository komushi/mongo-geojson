# Import block-level polygon data of Tokyo to MongoDB

## 1. Build
```
docker build -t "komushi/mongo-geojson" .
```

## 2. Push
```
docker push komushi/mongo-geojson
```

## 3. Run
```
docker run -p 27017:27017 komushi/mongo-geojson
```

## 4. Test
```
mongo -u root -p keepitsimple localhost:27017/geojson

db.blocks.find(
   {
     geometry: {
       $geoIntersects: {
          $geometry: {
             type: "Point" ,
             coordinates: [ 139.771699, 35.697283 ]
          }
       }
     }
   }
)
```