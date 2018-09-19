# zipcode-finder

## Author
![](author.JPG)

## Goal
Build an rails-API to query zipcode by given gps, and encapsulate the system into docker.

## How to run
1. Install docker
2. Run ```gunzip db-seed init.json.gz``` to decompress init.json file.
3. Run ```docker-compose up```, this process takes about 10 minutes to build the index.  
It will display the process of building index like
```
db-seed_1  | 2017-12-15T23:23:37.907+0000	[##......................] zipcode_finder_development.zipcodes	73.4MB/588MB (12.5%)
```
4. Aceess api via
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