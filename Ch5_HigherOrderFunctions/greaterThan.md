## `greaterThan()`
greaterThan is a function that creates other functions.  
By passing in an `n` argument, you are giving the return function a base for comparison. 

```js
function greaterThan(n) {
  return function(m) { 
    return m > n 
  }
}

var greaterThan10 = greaterThan(10);
```

> `greaterThan10(11);`  

> true

```js
var greaterThan20 = greaterThan(20);
```

> `greaterThan20(25);`  

> true  

> `greaterThan20(19);` 

> false
