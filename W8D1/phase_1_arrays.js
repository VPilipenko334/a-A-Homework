// monkey patch the following methods to the Array class, we want to 
// use prototype here. 

//returns new arr 
// containing each individual ele of original arr ONLY ONCE

Array.prototype.uniq = function() {

    let newArr = [];

    for (let i = 0; i < this.length; i++) {
        if (newArr.indexOf(this[i] === -1)) { // if the ele doesn't exist, it will return -1, if it does NOT include ele
            newArr.push(this[i]);
        }
    }
    return newArr;
};

// another solution 
// here we are using Array#foEach with a callback that is closing over 
// 'uniqueArray'

Array.prototype.uniq2 = function() {
    let uniqueArr = [];

    this.forEach(function (el) {
        if (!uniqueArr.includes(el)) {
            uniqueArr.push(el);
        }
    });

    return uniqueArr;
};

console.log([1, 1, 2, 2, 3, 3, 4, 4, 5, 5].uniq());


// returns an arr of position pairs where the elements SUM to 0 

Array.prototype.twoSum = function() {
    const pairsArr = [];

    for (let i = 0; i < this.length; i ++) {
        for (let j = (i + 1); j < this.length; j++) {
            if (this[i] + this[j] === 0) {
                pairsArr.push([i, j]);
            }
        }
    }   

    return pairsArr;
};  

console.log([-1, 0, 2, -2, 1].twoSum());
