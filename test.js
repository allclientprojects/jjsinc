function main() {
    var results = [];
    var inputArray = [2, 7, 11, 15];
    var target = 9;
    
    for (i = 0; i<inputArray.length; i++){
        if (inputArray[i] <= 9){
            for(j = i + 1; j < inputArray.length; j ++ ){
                if (inputArray[i] + inputArray[j] == target){
                    console.log(results[inputArray[i], inputArray[j]]);
                    return results[inputArray[i], inputArray[j]];
                }
                else{
                    return false;
                }
            }
        }
    }
}

main();