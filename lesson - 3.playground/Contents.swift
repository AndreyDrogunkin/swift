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

var present: Bool {
    get {
        return motor + " " + windows + " " + truck
    }
}

var truck = Truck(motor: true, Windows: false, Truck: true, truckVol: 70.4)

print(truck.present)


// 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия

struct Car3 {
    var motor: String
    var windows: Bool
    var speed: Int
    var truckVol: Double {
         willSet {
            print(truckVol)
        } didSet {
            print(speed)
        }
}
    var car = Car3(motor:"Drive", windows:true, speed:80, truckVol: 75.23 )
    car.speed = 120
    print()












