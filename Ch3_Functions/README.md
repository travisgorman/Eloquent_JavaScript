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
Here is another version that uses the built-in Math.min method, which does the same thing as the function above, so here I assin a variable to the result of Math.min(x,y)

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

This works fine for positive numbers, but if `n` is any number less than zero, we get `RangeError: Maximum call stack size exceeded`. The recursive calls to `isEven`, subtract 2 from `n` on and on, until finally Chrome said enough is enough. When the call stack was blown, `n` equals -15,581.  We need to reach either zero or one, and instead each call only take us further from our goal.

We can address the issue of negative numbers, by adding a line at the top of the conditional chain that converts `n` to its positive equivelant. Now we will eventually hit one or zero.  
This works as long as `n` is a number between -1

Here is an updated version that works for all numbers between -15,580 and 15,580
This limitation is based on the fact that 15,580 is the call stack limit at the moment for the current version of Chrome. 

```js
function isEven(n) {
  if (n < 0) {        /* if `n` is less than zero */
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
---
