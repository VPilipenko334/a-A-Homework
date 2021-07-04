// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// fizzBuzz
// takes in an arr and returns a new array of every num in arr that is % by 3 or 5, but not both

function fizzBuzz(array) {    
    let fizzBuzzArr = []; 

    array.forEach(el => {
        if ((el % 3 === 0 || num % 5 === 0) && (num % 3 === 0 && num % 5 === 0)) {
        fizzBuzz.push(el);
        }
    });
   
   return fizzBuzzArr; 
}

function isPrime(num) {

    if (num < 2) {
        return false;
    }

    for (i = 2; i < num; i++) {
        if (num % i === 0) {
            return false;
        }
    }
    
    return true;
}