// Juan Vazquez
// https://github.com/javazquez
// http://javazquez.com
// Javascript Solution to Project Euler problem 7
// http://projecteuler.net/problem=7
/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
*/
var UPPER_BOUND = 10001;
var primes =[2];
var i = 3;

isPrime = function(candidate){
  for(var k = 0; k < primes.length; k++){
      if(candidate % primes[k] === 0) return false;
  }
  return true;
}

while(primes.length < UPPER_BOUND){
    if(isPrime(i)) primes.push(i);
    i++;
}
console.log(primes[UPPER_BOUND - 1])//104743
