# Sum Of A Range  
### Part One: Range   
Write a range function that takes two arguments, `start` and `end`, and returns an array containing all the numbers from `start` up to and including `end`.  

```js
function range (start, end) {
  var rayRay = [];

  while (end >= start) {
    rayRay.unshift(end);
    end = (end - 1);
  }
return rayRay;
}
```
>> ```js
range(1,10);
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```
---

### Part Two: Sum
Take in the `rayRay` array returned by the `range` function above, and returns the sum of all numbers.  

```js
function sum (arr) {
  var sum = 0;

  for (var i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}

```

>>```js
sum(range(1,10));
55
```
---

### Part Three: Modified Range
This modified version of `range` takes a third parameter, `steps` that indicates the step value used to build up the array. My current  solution might not be build to do this properly, so Ill have to revise or build this from scratch.

```js
function rangeMod(start, end, step) { 
  
    code goes here
      
}

```

---

# A List 
A list is a nested set of objects. The first object holds a reference to the second, the second to the third, and so on. The resulting objects form a chain.

### Part One: arrayToList
builds up a data structure like the previous one when given [1, 2, 3] as argument.

```js

  code goes here

```
steps


### Part Two: listToArray
produces an array from a list.

```js

  code goes here

```
steps

### Helper Function: prepend
takes an element and a list and creates a new list that adds the element to the front of the input list.

```js

  code goes here

```
steps

### Helper Function: nth
takes a list and a number and returns the element at the given position in the list, or undefined when there is no such element.

```js

  code goes here

```
steps

### Helper Function: Recursie nth  
```js

  code goes here

```
steps

---


