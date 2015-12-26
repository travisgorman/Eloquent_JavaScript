## Filtering an Array with `filter()`
filters out the elements in an array that don't pass a test

```js
function filter(array, test){
  var passed = [];

  for( var i =0; i < array.length; i++ ) {
    if ( test( array[i] ))
    passed.push( array[i] );
  }
  return passed;
}

```
* `filter()` takes a test function, and applies it to each item in an array
* The test function returns a Boolean value. 
* If the item returns `true` it is pushed into the `passed` array
* The `passed` array is returned

```js
ancestry.filter(person => person.born > 1900 && person.born < 1925 );
```
>```js
[  
  {
        "name": "Philibert Haverbeke", 
        "sex": "m", 
        "born": 1907, 
        "died": 1997, 
        "father": "Emile Haverbeke", 
        "mother": "Emma de Milliano" 
    },
  {
        "name": "Clara Aernoudts", 
        "sex": "f", 
        "born": 1918, 
        "died": 2012, 
        "father": "Henry Aernoudts", 
        "mother": "Sidonie Coene"
    },
  {
        "name": "Maria Haverbeke", 
        "sex": "m", 
        "born": 1905, 
        "died": 1997, 
        "father": "Emile Haverbeke", 
        "mother": "Emma de Milliano"
    }
]
```

