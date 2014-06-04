// Juan Vazquez
// https://github.com/javazquez
// http://javazquez.com
// Clojure Solution to Project Euler problem 4
// http://projecteuler.net/problem=4
/*
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
*/

var isPalindrome = function(digits){
  return (digits+'').split('').reverse().join('')=== digits+''; //not ideal, but since working with numbers no worries about this with actual strings
}
var maxPalindrome = 0;

for(var i= 100; i < 1000; i++){
  for(var j = 100; j < 1000; j++){
    var test = i*j;
    if(isPalindrome(test)){
      if(test > maxPalindrome){
        maxPalindrome = test;
      }
    }
  }
}
console.log(maxPalindrome)//906609
