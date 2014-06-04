// Juan Vazquez
// https://github.com/javazquez
// http://javazquez.com
// Javascript Solution to Project Euler problem 1
// http://projecteuler.net/problem=1
var sum = 0;
for(var i=1; i< 1000; i++){
  if(i % 3 === 0 || i % 5 === 0 ){
    sum += i;
  }
}
console.log(sum); //233168
