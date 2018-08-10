import Cocoa
import XCTest

var str = "Hello, playground"

func gradingStudents(_ grades: [Int]) -> [Int] {
  let minGradeWithoutRounding = 38
  var finalGrades: [Int] = []
  let gradesCount: Int = grades.count
  
  for index in  0...gradesCount-1 {
    var val = grades[index]
    
    if (val >= minGradeWithoutRounding) {
      let remainder = val % 5
      
      if (remainder >= 3) {
        val = val + 5 - remainder
      }
    }
    
    finalGrades.append(val)
  }
  
  return finalGrades
}


let gradesTest: [Int] = [73, 67, 40, 33, 83, 94]
let gradesTest2: [Int] = [38, 59, 50, 45, 22, 94]

XCTAssertEqual(gradingStudents(gradesTest), [75, 67, 40, 33, 85, 95])
XCTAssertEqual(gradingStudents(gradesTest2), [40, 60, 50, 45, 22, 95])
