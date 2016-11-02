
var numbers = '80:70:90:100';
var numberArray = numbers.split(":");
integerArray = [];

numberArray.forEach(function(n){
   integerArray.push(Number(n));
});
counter = 0;
integerArray.forEach(function(n){
  counter += n
})
  result = counter/integerArray.length
console.log( result === 85 );
