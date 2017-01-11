#!/usr/bin/python

import requests

url = 'http://192.168.0.48:9080/events/schema/myProducts1'
headers = {'X-Events-API-AccountName' : 'customer1_73d9981f-ef81-4ce0-aa04-ef6e3553a380', 'X-Events-API-Key' : 'bce585ea-eefd-4b5b-8888-b98ed5d8b03b', 'Content-type' : 'application/vnd.appd.events+json;v=1'}
data = '{"schema" : { "id": "string", "productBrand": "string", "userRating": "integer", "price": "float", "productName": "string", "description": "string" } }'

r = requests.post(url, headers=headers, data=data)

print (r.text)
