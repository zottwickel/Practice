/* This is my first solution, using reduce */

var numberArrayFive = [];

for(var i = 0; i < 1000; i +=5 ){
  numberArrayFive.push(i);
  
}

var sumFive = numberArrayFive.reduce(function(pv, cv) { return pv + cv; }, 0);

var numberArrayThree = [];

for(var j = 0; j < 1000; j +=3){
  numberArrayThree.push(j);
  
}

var sumThree = numberArrayThree.reduce(function(pv, cv) { return pv + cv; }, 0);

var numberArrayCommon = [];

for(var k = 0; k < 1000; k +=15){
  numberArrayCommon.push(k);
  
}

var sumCommon = numberArrayCommon.reduce(function(pv, cv) { return pv + cv; }, 0);

console.log(sumFive + sumThree - sumCommon);

/* This is my seccond solution, using modulus operator */

var total = 0;

for(vari = 1; i < 1000; i++) {
	if(i % 3 === 0 || i % 5 === 0) {
		total += i;
	}
}

console.log(total);