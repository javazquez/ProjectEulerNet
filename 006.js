// Juan Vazquez
// https://github.com/javazquez
// http://javazquez.com
// Javascript Solution to Project Euler problem 6
// http://projecteuler.net/problem=6
/*
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*/
var sumOfSquares = 0;
var squareOfSums = 0;
for(var j = 1; j <= 100; j++){
  sumOfSquares += Math.pow(j,2);
  squareOfSums += j;
}
console.log(Math.pow(squareOfSums,2) - sumOfSquares);//25164150
