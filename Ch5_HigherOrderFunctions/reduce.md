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
