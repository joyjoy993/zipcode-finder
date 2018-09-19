#!/bin/bash

sleep 5

gunzip /seed/init.json.gz && mongoimport --host mymongo:27017 --db zipcode_finder_development --collection zipcodes --type json --file /seed/init.json --jsonArray

mongo mymongo:27017/zipcode_finder_development /seed/init.js

echo "database initialization finished..."