//: Playground - noun: a place where people can play

import Cocoa
import PlaygroundSupport

/*enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, FatherAncestors: FamilyTree,
        motherName: String, MotherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.twoKnownParents(fatherName: "Fred Sr.", FatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", MotherAncestors: .noKnownParents)
*/

//enum ShapeDimensions {
//    case square(side: Double)
//    
//    case rectangle(width: Double, height: Double)
//    
//    func area() -> Double {
//        switch self {
//        case let .square(side: side):
//            return side * side
//            
//        case let .rectangle(width: w, height: h):
//            return w * h
//        }
//    }
//    
//    func perimeter() -> Double {
//        switch self {
//        case let .square(side: side):
//            return side + side + side + side
//            
//        case let .rectangle(width: w, height: h):
//            return (w * 2) + (h * 2)
//        }
//    }
//}
//
//var squareShape = ShapeDimensions.square(side: 10.0)
//var rectShape = ShapeDimensions.rectangle(width: 5, height: 10)
//
//print("Area of Square: \(squareShape.area()) ")
//print("Area of rectangle: \(rectShape.area()) ")
//
//print("Perimeter of Square: \(squareShape.perimeter())")
//print("Perimeter of Rectangle: \(rectShape.perimeter())")



//enum grades {
//    case a
//    case b
//    case c
//}
//
//func getGrade(grade: grades) -> Int {
//    var gradeNumber: Int
//
//    switch grade {
//    case .a:
//        gradeNumber = 90
//
//    case .b:
//        gradeNumber = 80
//
//    case .c:
//        gradeNumber = 70
//
//    }
//    return gradeNumber
//}
//
//var newGrade = grades.a

//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
//    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//let numbers = [16, 58, 510]
//
//
//let strings = numbers.map { (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = digitNames[number % 10]! + output
//        number /= 10
//    } while number > 0
//    return output
//}

let url = URL(string: "https://ghibliapi.herokuapp.com/films/")!

var request = URLRequest(url: url)
request.httpMethod = "GET"
typealias JSON = [String: Any]
let session = URLSession.shared

session.dataTask(with: request, completionHandler: {(data, response, error) in
    if let jsondata = data {
        print(jsondata)
    }
}).resume()

// Don't forget to resume task





