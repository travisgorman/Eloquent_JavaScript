## Composability with higher-order functions

```js
function average(array){
  function plus(a, b){
    return a + b;
  }
  return array.reduce(plus) / array.length;
}
```

```js
function age(p){
  return p.died - p.born;
}
```

```js
function male(p){
  return p.sex === "m";
}
```

```js
function female(p){
  return p.sex === "f";
}
```

Now we've got a few helper functions and can compose to do more complex work.  
Find the average age of men and the average age of women in the `ancestry` dataset.  

```js
average( ancestry.filter( male).map( age) );
```
>61.66

```js
average( ancestry.filter( female).map( age) );
```
>54.55

