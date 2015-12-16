Historical Life Expectancy
==============================
Compute and output the average age of the people in the ancestry data set per century. A person is assigned to a century by taking their year of death, dividing it by 100, and rounding it up.

```js
function average (array) {
  function plus(a,b) { return a + b;}
  return array.reduce.(plus) / array.length;
}

function averageLifeExpectancy(array) {
  var centuryGroups = {};
  
  array.forEach(function(ancestor){
    century = Math.ceil(ancestor.death/100);
    age = ancestor.death - ancestor.born;
    if (!(century in centuryGroups)) {
      centuryGroups[century] = [];
    }
    centuryGroups[century].push(age);
  });

  for (var key in centuryGroups) {
    centuryGroups[key] = average(centuryGroups[key]);
  }
  return centuryGroups;
}
```

1. *Declarations:* `centuryGroups` object to group ancestors by century
1. **forEach** `array` with anonymous function taking `ancestor` ...
  * Divide `ancestor.death` by 100 and round up with `Math.ceil`
    * Assign result to `century`
  * Subtract `ancestor.born` from `ancestor.death`
    * Assign result to `age`
  * If `centuryGroups` doesn't have century as a property, create it
  * Push the ages of people into their respecitve `century` array
1. **For/in** Declare `key` to loop `centuryGroups` object - on each item...
  * Find average age of each century by sending in the `average` function
    * Assign result to each century by replacing data with average
1. Return `centuryGroups` object containing centuries and average lifespan


___
