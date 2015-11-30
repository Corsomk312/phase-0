var mode = function(array){
  var count = {};

  for (var i = 0;i < array.length; i++){
    if (count[array[i]] === undefined){
      count[array[i]] = 1;
    } else {
      count[array[i]] += 1;
    };
  };

  var highest = 0;
  
  for (var total in count){
    if (count[total] > highest){
      highest = count[total];    
    };
  };

  // for (var count in output){
  //   if (output[count] > highest) {
  //     highest = output[count];
  //   };
  // };
  console.log(highest);
};

var test = mode([1,2,2,3,3,5]);