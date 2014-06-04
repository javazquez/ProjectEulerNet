// Juan Vazquez
// https://github.com/javazquez
// http://javazquez.com
// Javascript Solution to Project Euler problem 5
// http://projecteuler.net/problem=5
/*
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/

var divisByAll20 = function(digit){
  for(var i = 2; i<21; i++){
    if(digit % i !== 0)
    return false;
  }
  return true;
}
var start = 1;
while(!divisByAll20(start)){
  start++;
}
console.log(start); //232792560
