# zipcode-finder

## Author
<img src="author.JPG" width="300">

## Goal
Build an rails-API to query zipcode by given gps, and encapsulate the system into docker.

## How to run
1. Install docker
2. Run ```docker-compose up```, this process takes about 10 minutes to build the index.  
It will display the process of data import and indexing like
```
db-seed_1  | 2017-12-15T23:23:37.907+0000	[##......................] zipcode_finder_development.zipcodes	73.4MB/588MB (12.5%)
```
And when it finishes, it will show a message
```
database initialization finished...
```
3. Aceess api via
```http://localhost:3000/zipcode?lat=40.6402399&lng=-74.44```
and it should return json response
```
{
  zipcode: "07069"
}
```
if there's no result or there's an error, it should return
```
{
  zipcode: "No result"
}
```

## How to stop and restart
1. After ```docker-compose up``` and finishing index, you can use ```Crtl C``` to stop it.
2. Run ```docker-compose start``` to restart the api.
3. Stop by running ```docker-compose stop```.  

#### Or you can use docker container to control them. ####

## Other notes
#### Data source
US zipcode boundary shape files from [Census Bureau ](https://www.census.gov/geo/maps-data/data/cbf/cbf_zcta.html)

#### Preprocess data
Download the shape files and convert them to json files.

#### Why I use docker in this project
1. This project can be easily deployed in some computers that don't have rails and mongodb.
2. The json data of zipcode boundary can be stored into the container and automatically imported into mongodb.
