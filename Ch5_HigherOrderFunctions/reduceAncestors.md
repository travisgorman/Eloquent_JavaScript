Reduce to combine values from their ancestors recusively

```js
function reduceAncestors(person, f, defaultValue){
  function valueFor(person){
    if (person === null)
    return defaultValue;
    else 
    return f( person, valueFor( byName[ person.mother] ),
                      valueFor( byName[ person.father] ));
  }
  return valueFor(person);
}
```

reduceAncestors takes a `person` a combiner function, and a default value (0).  
The coombiner function, `f`, takes the `person`  and the inner function `valueFor`, passing in the mother, and the father. 
`sharedDNA` below is what we'll use as this combiner function. 

```js
function sharedDNA(person, fromMother, fromFather){
  if(person.name === "Pauwels van Haverbeke") 
    return 1;
  else 
  return (fromMother + fromFather) / 2;
}
```
Now, we can use `byName` to declare a variable for Philibert Haverbeke, so we can pass him in as the `person` to `reduceAncestors`

```js
var phil = byName["Philibert Haverbeke"];
```

How much DNA does Philibert share with Pauwells? 

```js
reduceAncestors(phil, sharedDNA, 0) / 4;
```

>0.00048828125

