#!/bin/bash
echo "Initializing imports..."
mongosh --host mongo1:27017 --username admin --password admin --eval 'rs.initiate({_id: "rs0", members: [{ _id: 0, host: "mongo_master:27017" }, { _id: 1, host: "mongo_replica_02:27017" }, { _id: 2, host: "mongo_replica_03:27017" }]})' |
mongoimport --host mongo_master --port 27017 --db db_amazonas --collection col_clients --file /data/col_clients.json --jsonArray --username admin --password admin --authenticationDatabase admin |
mongoimport --host mongo_master --port 27017 --db db_amazonas --collection col_orders --file /data/col_orders.json --jsonArray --username admin --password admin --authenticationDatabase admin |
mongoimport --host mongo_master --port 27017 --db db_amazonas --collection col_product_category --file /data/col_product_category.json --jsonArray --username admin --password admin --authenticationDatabase admin |
mongoimport --host mongo_master --port 27017 --db db_amazonas --collection col_products --file /data/col_products.json --jsonArray --username admin --password admin --authenticationDatabase admin |
mongoimport --host mongo_master --port 27017 --db db_amazonas --collection col_suppliers --file /data/col_suppliers.json --jsonArray --username admin --password admin --authenticationDatabase admin |
echo "Finished Imports!"