What percentage of a persons ancestors lived past 70?

First, create two new helper functions, `countAncestors` and `longLivingPercentage`

```js
function countAncestors( person, test){
  function combine( person, fromMother, fromFather){
    var thisOneCounts = test( person);
    return fromMother + fromFather + (thisOneCounts ? 1 : 0);
  }
  return reduceAncestors( person, combine, 0);
}
```

```js
function longLivingPercentage( person){
  var all = countAncestors( person, function( person){
    return true;
    });
    var longLiving = countAncestors( person, function( person) {
      return ( person.died - person.born ) >= 70;
      });
      return longLiving / all;
}
```

Now that we have our functions, 

```js
longLivingPercentage(byName["Emile Haverbeke"]);
```
>0.145

```js
longLivingPercentage(byName["Maria van Brussel"]);
```
>0.11
