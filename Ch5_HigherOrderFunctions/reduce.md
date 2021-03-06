## Summarizing with `reduce()`

Implement `reduce()` to compute a single value from an array.  Fold up the array, one element at a time.  The combiner function takes an accumulated value, and a current value. 

```js
function reduce(array, combine, start){
  var current = start;
  for(var i = 0; i < array.length; i++)
  current = combine(current, array[i] );
  return current;
}
```
Let's try to find the monst ancient ancestor.

```js
ancestry.reduce( (min, cur) => 
  (cur.born < min.born) ? cur : min );
```
We go through all 39 items, checking to see who was born first. On each item in the array, replace the accumulated value with the current person if they were born earlier. We are returned an array 1 item long, with the eldest ancestor. 

>```js
[
  {
      "name": "Pauwels van Haverbeke", 
      "sex": "m", 
      "born": 1535, 
      "died": 1582, 
      "father": "N. van Haverbeke", 
      "mother":null
  } 
]
```
This is how we may have to write it without higher-order functions.

```js
function oldest() {
  var min = ancestry[0];
  for ( var i = 1; i < ancestry.length; i++ ){
    var cur = ancestry[i];
    if ( cur.born < min.born ) 
      min = cur;
  }  
  return min;
}
```
`min` starts out as the first item. As we loop the array, when `cur` was born before min, the value held by `min` is replaced by `cur`. This occurs with each item all the way through the array, looking at two items at a time, comparing them to one another, folding the array in on itself, leaving us with the eldest, Pauwells.  

This pattern is abstracted by `reduce()`. 

```js
ancestry.reduce( (min, cur) => 
  (cur.born < min.born) ? cur : min );
```

___

