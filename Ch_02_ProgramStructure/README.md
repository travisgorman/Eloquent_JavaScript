#### Loop A Triangle   
This an exercise illustrating how to do something a certain number of times. There is no conditional logic- just a repetitive task and the question of how many times you'd like it done.  

The exercise says make 7 calls for a 7 story triangle, but I'd like to keep this flexible, so that will be a parameter called `num`. The arguement passed into `num` will tell the loop how many times to repeat.  

On each call to console.log our output is growing in length by one "#", which is achieved by having a variable that we concatenate to on every iteration before printing it to the console.   

Since we want a bunch of different printouts, not a final printout, I know that my `console.log(str)` is inside the loop.   

```js
function loopATriangle (num) {
  var pound = "#";
  for ( var i = 0; i < num; i++ ) {
    pound += "#";
    console.log(pound);
  }
}

loopATriangle(7);
/* 
#
##
###
####
#####
######
#######
 */
```
Pass in 7 for a triangle 7 rows tall, or any number to scale in size.   

---

#### Fizz Buzz

We know exactly what this function should do and what the result it produces should look like. 
This is enough to know that the structure of this function is going to look like a For Loop with 4 conditional statements. 
We need to make 100 calls to console.log, printing one of four different things depending on our criteria. The possible outcomes are:

- Divisible by 3 & 5 
  * `console.log("fizzBuzz")`
- Divisible by 3 
  * `console.log("Buzz")`
- Divisible by 5
  * `console.log("fizz")`
- Divisible by neither 
  * `console.log(i)`

Now the function has practically written itself. There are no parameters or variables and it's not very flexible, only a set of criteria and instructions. You either want a fizzBuzz or you don't, so I have wrapped it up as an IIFE just for fun. It would do just fine if I didn't, but why not. 

```js
(function fizzBuzz(){
    for (var i = 0; i < 100; i++) {
        if (i % 3 === 0 && i % 5 === 0) {
              console.log("fizzBuzz");
            }
        else if (i % 5 === 0) {
              console.log("Buzz");
            }
        else if ( i % 3 === 0) {
              console.log("fizz");
            }
        else console.log(i);
} })();
```
---

#### Chess Board   
Write a program that creates a string representing an 8x8 grid with checkerboard pattern of alternating #'s and whitespace.   

```js
function chessBoard (size) {  
  var output = "";
  var row = 0;
  
  for(var i = 0; i < size; i++) {
    for(var j = 0; j < size; j++) {
      if ((j + row) %2 ===0) {
        output += "#";
      }
      else {
        output += " ";
      }
    }
    output += "\n";
    row++;
  }
  console.log(output);
}
```  

The logic for this pattern is all about whether the row is even/odd, and whether the  column is even/odd. I need a nested loop where the outer loop handles the size and scale, moving down the y axis, and the inner loop writes the pattern, moving across the x axis.

- Outer Loop (iterates according to a `size` parameter - the number of rows and columns)
  - does inner loop  
  - adds new line break  
  - increments `row`
  
- Inner Loop (controls pattern)  
  - determines if row is odd or even
  - determine if position (column) is odd or even  

```js 
if ((j + row) % 2 === 0){ 
          /*Add index(j) to `row`- if the result is even,
            this indicates both the row and the current column are even. 
            Now you can start each row on the right square,
            and loop through the columns determined by `size` argument
            adding an alternating pattern of black/white squares */

  output += "#";  /* if even, add a black square to `output` */
}else{
  output += " ";  /* if odd, add a white square */
}
```
- After each iteration of inner loop, youv'e got a row written to `output`
  - you need to add a line break and move on to the next row

```js
    output += "\n"; /* add line break to `output` string */
    row++;          /* increment row */
```
- finally exit the nested loop, and print the `output` string with

```js
  console.log(output);
```
