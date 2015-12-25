`byName`
==============================
This is a helper function that associates names with people (their object in `ancestry`)


```js
var byName = {};
  ancestry.forEach( person =>
    byName[ person.name] = person );
```

* Each object in the `ancestry` array is a `person`.  
* `byName` is an empty object. 
* On each item in the `ancestry` array, `forEach()` performs an anonymous function taking a `person` 
* and uses bracket notation to assign the name value of the `person` object with the entire contents of the object
* thereby allowing you to use bracket notation to call upon an individual person by name

>byName["Bernardus de Causmaecker"];

    >{ name: 'Bernardus de Causmaecker',
       sex: 'm',
       born: 1721,
       died: 1789,
       father: 'Lieven de Causmaecker',
       mother: 'Livina Haverbeke' }

> byName["Petronella de Decker"];

    >{ name: 'Petronella de Decker',
       sex: 'f',
       born: 1731,
       died: 1781,
       father: 'Pieter de Decker',
       mother: 'Livina Haverbeke' }

### Notes
`byName` isn't really a function. It is an empty object. Calling `forEach()` on the `ancestry` array, and telling it to associate a person object with the value of its "name" property. You call a particular person with brackets, not parenthesis.  
