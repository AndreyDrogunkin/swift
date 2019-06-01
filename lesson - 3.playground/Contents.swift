// 1. Описать несколько структур – любой легковой автомобиль и любой грузовик.

import Foundation


enum Transmission {
    case manual
    case auto
}
struct Car {
    var mark:String
    var color:String
    var speed:Int
    var transmission:Transmission
}
var arr = [Car]()
var car = Car(mark: "BWM", color: "Black", speed: 150, transmission: .auto)
var truck = Car(mark: "Scania", color: "Grey", speed: 80, transmission: .manual)
arr.append(contentsOf: [car , truck])

for element in arr {
    print(element)
}

// 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

struct Car {
    var mark: String
    var yearMan: Int
    var truckVol: Double
    var isMotor: Bool
    var areWindows: Bool
    var isTrunk: Bool
    
    mutating func changeOnOfMotor() {
        isMotor = !isMotor
    }
    
    mutating func changeOpenClosedWindows() {
        areWindows = !areWindows
    }
    
    mutating func trunkEmptyFull () {
        isTrunk = !isTrunk
    }
}

var car = Car (mark: "Mercedes", yearMan: 2000 , truckVol: 67.5 , isMotor: true, areWindows: false, isTrunk: true)

car.changeOnOfMotor()
car.changeOpenCloseWindows()
car.trunkEmptyFull()

print("Двигатель запущен \(carExpensive.changeOnOfMotor)")
print("Окна закрыты \(carExpensive.changeOpenCloseWindows)")
print("Багажник заполнен" \ (arExpensive.trunkEmptyFull)")

// 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.


enum pushCar {
    case onMotor
    case offMotor
    case openWindows
    case closeWindows
    case onTrunk
    case offTrunk
}

struct Truck {
    var motor:Bool
    var windows:Bool
    var truck:Bool
    var truckVol:Double
}

var present: String {
    get {
        return motor + "  " + windows + "  " + truck + "  " + truckVol
    }
}

var truck = Truck(Motor: true, Windows: false, Truck: true, truckVol: 70.4)

print(truck.present)


// 4.





