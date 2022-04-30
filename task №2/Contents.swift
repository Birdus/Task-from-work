import UIKit

func reversArray(arrayNumber: inout [Int]) -> [Int]{
    
    for i in arrayNumber {
        
        if i <= arrayNumber.count/2 + 1 {
            let firstNumber =  arrayNumber[i-1]
            let lastNumber = arrayNumber[arrayNumber.count-i]
            arrayNumber[arrayNumber.count - i] = firstNumber
            arrayNumber[i-1] = lastNumber
        }else{
            break;
        }
        
    }
    return arrayNumber
}

var array: [Int] = [1,2,3,4,5,6,7,8,9]

print("Исходный массив: \(array) \nРеверс : \(reversArray(arrayNumber: &array))")

