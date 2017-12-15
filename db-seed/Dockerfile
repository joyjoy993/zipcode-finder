FROM mongo

COPY ./init.json /
CMD mongoimport --host mymongo --db zipcode_finder_development --collection zipcodes --type json --file /init.json --jsonArray
