# Minimum
Write a function min that takes two arguments and returns the smaller of the two.

```js
function min(a, b) {
  if (a > b) {
    return b;
  } else {
    return a;
  }

}
```
This function pretty much reads like plain english. Pass in any two numbers as the `a` and `b` arguments, and if `a` is greater than `b`, return `b`. Otherwise return `a`.  

##### Minimum (using Math.min)
Here is another version that uses the built-in Math.min method, which does the same thing as the function above, so here I assign a variable the result of `Math.min(x,y)` and return it. 

```js
function min(x,y){
  var z = Math.min(x,y);
  return z;
}

```

---

# Recursion

Take a number parameter and return a boolean. Check to see if number is even using recursion.

- Zero is even 
- One is odd
- For any other number, its evenness is the same as (n - 2)

```js

function isEven(n) {
  
  if (n === 0) {
    return true;
  }
  else if (n === 1) {
    return false;
  } 
  else {
    return isEven(n-2);
  }

}

```

This works for positive numbers, but if `n` is less than zero, we get `RangeError: Maximum call stack size exceeded`. The recursive calls to `isEven`, subtract 2 from `n` on and on, until Chrome says enough is enough. When the call stack was blown, `n` equals -15,581 - each call moving us further from our goal. We need to hit either one or zero, and that will never happen this way.  

We can account for negative numbers by adding a line at the top of the conditional chain that converts `n` to its positive equivelant, and continue just as we were. 

```js
function isEven(n) {
  if (n < 0) {        /* if `n` is a negative number */
  return isEven(-n)   /* convert it to its positive equivilant, and continue as usual down the chain of conditionals */
  }
  else if (n === 0) {
    return true;
  }
  else if (n === 1) {
    return false;
  }
  else {
    return isEven(n-2);
  }

}

```

This works as long as `n` is a number between -15,580 and 15,580, a limitation set by the call stack limit for Google Chrome

---
# Count B's
These two functions both look for a specific character within a string, and return the number of times it appears. Since we're keeping track of something, we'll have a `count` variable, set at zero that the function add to and return. One conditional inside one loop, adding to and returning a `count` variable should do just fine. 

- Loop through the length property of our `str` argument.  
- Set a conditional that adds to `count` whenever the the condition is met.  
- Use the `charAt()` string method, passing in the index, checking for equality.  

> `if(str.charAt(i) === "B")`  if the letter is an uppercase "B"
    
>`count++`      add one to `count`  


- After looping through `str` return `count`

```js
function countBs(str){
    var count =0;

    for(var i =0; i < str.length; i++){
        if(str.charAt(i) =="B"){
            count++;
        }
    }
    return count;

}
```
Next, we want a function called `countChar` that does the same thing, except with more flexibility.  
Instead of only uppercase "B"s, - count any character in a string.  

- Add a second parameter, `char`, and
- Replace  "B" in the conditional statement with `char`

```js
function countChar(str,char){

    var count =0;
    for(var i = 0; i< str.length; i++){

        if(str.charAt(i) == char){
            count++;
        }

    }

    return count;
}

```
