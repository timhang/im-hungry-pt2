# ReorderList Servlet



**GetList**

###### Request 

``` javascript
{
  "mode": "request",
  "list": "fav" // or toExplore or doNotShow
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
"list": "fav", // or "toExplore" or "doNotShow"
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

```JSON
{
  "response": "success"
}
```

# Ingredients Servlet
This servlet keeps track of the ingredients for the grocery list

*Adding Elements*

###### Request 

```JSON
{
"mode": "add",
"data": [
  "tomatos", "onions", "pepperoni"
  ]
}
```

###### Response 

```JSON
{
  "response": "success"
}

*Requesting Elements*

###### Request 

```JSON
{
"mode": "get"
}
```

###### Response 

```JSON
{
  "data": [
    "tomatos", "onions", "pepperoni"
  ]
}