db.createUser(
    {
      user: "root",
      pwd: "keepitsimple",
      roles: ["readWrite"]
    }
) 

db.blocks.createIndex({ geometry: "2dsphere" })