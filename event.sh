#!/bin/bash

#X-Events-API-AccountName:customer1
#X-Events-API-Key:bce585ea-eefd-4b5b-8888-b98ed5d8b03b

curl -X POST "http://192.168.0.48:9080/events/publish/myProducts" -H"X-Events-API-AccountName:customer1_73d9981f-ef81-4ce0-aa04-ef6e3553a380" -H"X-Events-API-Key:bce585ea-eefd-4b5b-8888-b98ed5d8b03b" -H"Content-type: application/vnd.appd.events+json;v=1" -d '[{"id": "5653b879ab33a","productBrand": "ACME","userRating": 3,"price": 2006.41,"productName": "Watch","description": "new watch"},{"id": "5653b879700","productBrand": "Widget","userRating": 1,"price": 3800.13,"productName": "Watch","description": "2015 watch"}]'
