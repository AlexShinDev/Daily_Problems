numbers = [5,2,7,3,4]

p numbers.reduce{ |num1, num2| num1 < num2 ? num1 : num2 }
