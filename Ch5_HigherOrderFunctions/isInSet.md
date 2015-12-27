## Binding

```js
var theSet = ["Carel Haverbeke", "Maria van Brussel", "Donald Duck"];

function isInSet(set, person){
  return set.indexOf( person.name) > -1;
}
```

```js
ancestry.filter(person => isInSet( theSet, person ));
```

>```js
  [
    {
      "name": "Carel Haverbeke", 
      "sex": "m", 
      "born": 1796, 
      "died": 1837, 
      "father": "Pieter Antone Haverbeke", 
      "mother": "Livina Sierens"
      },
    {
      "name": "Maria van Brussel", 
      "sex": "f", 
      "born": 1801, 
      "died": 1834, 
      "father": "Jan Frans van Brussel", 
      "mother": "Joanna de Causmaecker"

      }
    ]
```<


```js
ancestry.filter( isInSet.bind( null, theSet ));
```

same result

