//
//  main.swift
//  calculatorWithArray
//
//  Created by Lijuan Zhang on 10/12/15.
//  Copyright © 2015 Lijuan Zhang. All rights reserved.
//

import Foundation

func add(left : Int?, right : Int?) -> Int? {
    if left != nil && right != nil {
        return left! + right!
    }
    else {
        print("input contains nil")
        return nil
    }
}

func subtract(left : Int?, right : Int?) -> Int? {
    if left != nil && right != nil {
        return left! - right!
    }
    else {
        print("input contains nil")
        return nil
    }
}

func multiply(left : Int?, right : Int?) -> Int? {
    if left != nil && right != nil {
        return left! * right!
    }
    else {
        print("input contains nil")
        return nil
    }
}

func divide(left : Int?, right : Int?) -> Int? {
    if left != nil && right != nil {
        return left! / right!
    }
    else {
        print("input contains nil.")
        return nil
    }
}

//The generic "math operation" function
func mathOperation(left : Int?, right : Int?, operation : (Int?, Int?) -> Int?) -> Int? {
    return operation(left, right)
}

//function for add operation, takes an array of Ints
func add(numbers : [Int]?) -> Int? {
        if numbers != nil {
        var result : Int = 0
        for number in numbers! {
            result += number
        }
        return result
    }
    else {
        return nil
    }
}

//function for multiply operation, takes an array of Ints
func multiply(numbers : [Int]?) -> Int? {
    if numbers != nil {
        var result : Int = 1
        for number in numbers! {
            result *= number
        }
        return result
    }
    else {
        return nil
    }
}

func count(numbers : [Int]?) -> Int? {
    return numbers?.count
}

func avg(numbers : [Int]?) -> Int? {
    if numbers != nil {
        return add(numbers)! / numbers!.count
    }
    else {
        return nil
    }
}

func mathOperation(numbers : [Int]?, operation : ([Int]?) -> Int?) -> Int? {
    return operation(numbers)
}

func addPoints(left : (x : Double, y : Double), right : (x : Double, y : Double)) -> (x : Double, y : Double) {
    let resultX = left.x + right.x
    let resultY = left.y + right.y
    return (resultX, resultY)
}

func subtractPoints(left : (x : Double, y : Double), right : (x : Double, y : Double)) -> (x : Double, y : Double) {
    let resultX = left.x - right.x
    let resultY = left.y - right.y
    return (resultX, resultY)
}

func subtractPoints(left: Dictionary<String, Double>, right: Dictionary<String, Double>) -> Dictionary<String, Double> {
    var dic = Dictionary<String, Double>()
    let resultX : Double?
    if left["x"] != nil && right["x"] != nil {
        resultX = left["x"]! - right["x"]!
        dic["x"] = resultX
    }
    else {
        println("Missing x value")
    }
    
    let resultY : Double?
    if left["y"] != nil && right["y"] != nil {
        resultY = left["y"]! - right["y"]!
        dic["y"] = resultY
    }
    else {
        println("Missing y value")
    }
    
    return dic
}

func addPoints(left: Dictionary<String, Double>, right: Dictionary<String, Double>) -> Dictionary<String, Double> {
    var dic = Dictionary<String, Double>()
    let resultX : Double?
    if left["x"] != nil && right["x"] != nil {
        resultX = left["x"]! + right["x"]!
        dic["x"] = resultX
    }
    else {
        println("Missing x value")
    }
    
    let resultY : Double?
    if left["y"] != nil && right["y"] != nil {
        resultY = left["y"]! + right["y"]!
        dic["y"] = resultY
    }
    else {
        println("Missing y value")
    }
    
    return dic
}

println("Result of mathOperation(1, 2, add) is: \(mathOperation(1, 2, add)!)")
println("Result of mathOperation(nil, 2, add) is: \(mathOperation(nil, 2, add))")
println("Result of mathOperation(1, 2, subtract) is: \(mathOperation(1, 2, subtract)!)")
println("Result of mathOperation(1, 2, multiply) is: \(mathOperation(1, 2, multiply)!)")
println("Result of mathOperation(2, 2, divide) is: \(mathOperation(2, 2, divide)!)")
println()
println("Result of mathOperation([1, 2, 3, 4], add) is: \(mathOperation([1, 2, 3, 4], add)!)")
println("Result of mathOperation(nil, add) is: \(mathOperation(nil, add))")
println("Result of mathOperation([1, 2, 3, 4], multiply) is: \(mathOperation([1, 2, 3, 4], multiply)!)")
println("Result of mathOperation([1, 2, 3, 4], count) is: \(mathOperation([1, 2, 3, 4], count)!)")
println("Result of mathOperation([1, 3, 3, 1], avg) is: \(mathOperation([1, 3, 3, 1], avg)!)")
println()

//Test of points operation for dictionary

println("Result of addPoints(['x':3, 'y':3], ['x':2, 'y':5.5]) is: ")
println(addPoints(["x":3, "y":3], ["x":2, "y":5.5]))
println()

println("Result of addPoints(['y':3], ['x':2, 'y':5.5]) is: ")
println(addPoints(["y":3], ["x":2, "y":5.5]))
println()

println("Result of subtractPoints(['x':3, 'y':3], ['x':2, 'y':5.5]) is: ")
println(subtractPoints(["x":3, "y":3], ["x":2, "y":5.5]))
println()

println("Result of subtractPoints(['x':3, 'y':3], ['x':2]) is: ")
println(subtractPoints(["x":3, "y":3], ["x":2]))
println()

println("Result of addPoints((x:3, y:3), (2, 5)) is: \(addPoints((x:3, y:3), (2, 5)))")
println("Result of subtractPoints((x:3, y:3), (2, 5)) is: \(subtractPoints((x:3, y:3), (2, 5)))")