# ReorderList Servlet



**GetList**

###### Request 

``` javascript
{
  "mode": "request",
  "list": "favorites" // or toExplore or doNotShow
}
```

###### Response 

```json
[{
  "id": 21,
  "type": "recipe",
  "name": "pizza",
  "starRating": "5",
  "prepTime": "3 min",
  "cookTime": "3h",
  "link": "inai",
}, 
 {
  "id": 21,
  "type": "restaurant",
  "name": "trojan pizza",
  "address": "",
  "rating": "",
  "link" : "restId",
  "travelTime": "",
  "priceRange":""
 }]
```

**Update**

Front end FE lets the Backend BE know what elements have changed of position 

###### Request 

```JSON
{
"mode": "update",
"data": [{
    "id": 21,
    "type": "restaurant",
    "newIndex": 0
  }, 
  {
    "id": 21,
    "type": "recipe",
    "newIndex": 1
  }]
}
```

###### Response 

```
{
  "response": "success"
}
```