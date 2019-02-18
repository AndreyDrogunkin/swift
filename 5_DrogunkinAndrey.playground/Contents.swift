//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

protocol Car {
    func haveToOptions() -> String
}
    class Transmission: Car {
        var auto: String
        var manual: String
        func haveToOptions() -> String {
            return auto
        }
        init (auto: String, manual:String) {
            self.auto = auto
            self.manual = manual
        }
}
    
    class Color: Car {
        var red: String
        var black: String
        var grey: String
        
        func haveToOptions() -> String {
            return black
        }
        init(red:String, black: String, grey:String) {
            self.red = red
            self.black = black
            self.grey = grey
        }
    
        class Motor: Car {
            var diesel: String
            var gasoline: String
            
            func haveToOptions() -> String {
                return diesel
            }
            init (diesel: String, gasoline: String) {
            self.diesel = diesel
            self.gasoline = gasoline
}


// 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).


}
