## Transforming with `map()`

```js
function map(array, transform) {
  var mapped = [];
  for( var i = 0; i < array.length; i++ ) {
    mapped.push( transform( array[i] ) );
    return mapped;
  }
}

```



Filter `ancestry ` for people who lived to be at least 90 years old


```js
var overNinety = ancestry.filter( person => person.died - person.born > 90 ); 
```
`overNinety;`

>```js
[  
  {     "name": "Clara Aernoudts", 
        "sex": "f", 
        "born": 1918, 
        "died": 2012, 
        "father": "Henry Aernoudts", 
        "mother": "Sidonie Coene"
    },
  {     "name": "Emile Haverbeke", 
        "sex": "m", 
        "born": 1877, 
        "died": 1968, 
        "father": "Carolus Haverbeke", 
        "mother": "Maria Sturm"
    },
  {     "name": "Maria Haverbeke",
        "sex": "m", 
        "born": 1905, 
        "died": 1997, 
        "father": "Emile Haverbeke", 
        "mother": "Emma de Milliano"
    } 
  ]
```<

```js
overNinety.map( person => person.name );
```

>```js
[ "Clara Aernoudts", "Emile Haverbeke", "Maria Haverbeke" ]
```
