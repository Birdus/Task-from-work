import UIKit

func reversArray(arrayFunc: inout [[Int]]) -> [[Int]]{
    for i in 0..<arrayFunc.count {
        if i % 2 != 0 {
            for j in 0..<arrayFunc[i].count {
                let temp = arrayFunc[i][j]
                arrayFunc[i][j] = arrayFunc[i-1][j]
                arrayFunc[i-1][j] = temp
            }
        }
    }
    return arrayFunc
}

let storiesArray = 5
let linesArray = 4

var arrayInt: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: linesArray), count: storiesArray)

print("Изначальный массив:")

for pillars in 0..<arrayInt.count {
    for lines in 0..<arrayInt[pillars].count {
        arrayInt[pillars][lines] = Int.random(in: 0...9)
    }
    print(arrayInt[pillars])
}

arrayInt = reversArray(arrayFunc: &arrayInt)

print("Матрица после перебора: ")
for pillars in 0..<arrayInt.count {
    print(arrayInt[pillars])
}

