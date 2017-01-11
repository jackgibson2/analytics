#!/usr/bin/python

import requests, csv, pprint, json

reader = csv.DictReader(open('products.csv', 'rb'))
dict = []

for line in reader:
    dict.append(line)

print("The product list")
pprint.pprint(dict)

url = 'http://192.168.0.48:9080/events/publish/myProducts1'
headers = {'X-Events-API-AccountName' : 'customer1_73d9981f-ef81-4ce0-aa04-ef6e3553a380', 'X-Events-API-Key' : 'bce585ea-eefd-4b5b-8888-b98ed5d8b03b', 'Content-type' : 'application/vnd.appd.events+json;v=1'}


for product in dict:
    print(product['price'])
    product['price'] = float(product['price'])
    product['userRating'] = int(product['userRating'])
    data = '[' + json.dumps(product) + ']'
    print(data)
    r = requests.post(url, headers=headers, data=data)
    print (r.text)


