//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3. Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

protocol Fruits {
    var tropical: String { get set }
}

class Mango: Fruits {
    var color: String
    var tropical: String
    func eatingFruit() -> String {
        return color + tropical
    }
init (color: String, tropical: String) {
    self.color = color
    self.tropical = tropical
}

class Banana: Fruits {
    var sweet: String
    var tropical: String
    func eatingFruit() -> String {
        return sweet + tropical
}
init (sweet: String, tropical: String) {
    self.sweet = sweet
    self.tropical = tropical
        func eatingFruit() -> String {
}

struct Stack <String: Fruits> {
    private var elements: [String] = []
    
    mutating func push (element: String) {
        elements.append(element)
    }
    mutating func pop() -> String {
        return.elements.removeLast()
    }
    var healthFood: String
    var tropical = "Тропический фрукт"
    if color = "Red & Green" {
    print(tropical + \"Манго")
        } else {
    print(tropical + \ "Банан")
        }
    return tropical
    }
    var moreFruits = ("Мандарин", "Лимон", "Яблоко")
    func moreFruits(dictionary: [String], predicate: (String) -> Bool ) -> [String] {
        var tmpDictionary = [String] ()
        for fruit in dictionary {
            if predicate(fruits) {
                tmpDictionary.append(fruits)
            }
        }
        return tmpDictionary
    }
    filter(Dictionary: Dictionary, predicate: )
    filter (Dictionary: Dictionary, predicate: )
}



