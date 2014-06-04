// Juan Vazquez
// https://github.com/javazquez
// http://javazquez.com
// Javascript Solution to Project Euler problem 3
// http://projecteuler.net/problem=3
/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/

var primes = [2];
var CANDIDATE_NUM = 600851475143;
var maxFactor = 1;
isPrime = function(candidate){
  for(var k = 0; k < primes.length; k++){
      if(candidate % primes[k] === 0) return false;
  }
  return true;
}

for(var i = 3; i <= Math.sqrt(CANDIDATE_NUM); i++){
  if(isPrime(i)){
    primes.push(i);//build up the seive
    if( CANDIDATE_NUM % i === 0){
      maxFactor = i;
    }
  }
}

console.log(maxFactor)//6857
