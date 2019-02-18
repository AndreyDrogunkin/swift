//
//  main.swift
//  4_DrogunkinAndrey
//
//  Created by Андрей Дрогункин on 10/02/2019.
//  Copyright © 2019 Андрей Дрогункин. All rights reserved.
//

import Foundation

//1.Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

enum Transmission {
    case manual, auto
}
enum Countfuel {
    case full, empty
}

enum CarDoorState {
    case open, close
}
enum WheelDrive {
    case on, off
}
enum hatchStateTrunk {
    case open, close
}

class Car {
    var color: UIColor
    let transmission: Transmission
    var doorState:Bool
    var countFuel:Countfuel
    let mp3: Bool
    init (color: UIColor, transmission:Transmission, doorState:CarDoorState, countFuel: Countfuel, mp3:Bool, wheeldrive: WheelDrive, hatchState: hatchStateTrunk)

    self.color = color
    self.transmission = transmission
    self.doorState = doorState
    self.countFuel = countFuel
    self.mp3 = mp3
    self.wheeldrive = wheeldrive
    self.hatchState = hatchStateTrunk

}
func emptyFuel() {
    countFuel = .empty
}
func fullFuel() {
    countFuel = .full
}
func OnWheelDrive() {
    wheeldrive = .on
}
func OffWheelDrive() {
    wheeldrive = .off
}
func openHatch() {
    hatchState = .open
}
func closeHatch()
hatchState = .close

var car = Car(color: .grey,transmission: .auto, doorState: .open, countFuel: .full, mp3: true)


//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
class trunkCar:Car {
//определение нового свойства "Вместимость кузова" в классе
    static var bodyCapacityState: CarCapacityState
//инициализация основного конструктора класса
    init (color: UIColor,transmission: Transmission, doorState: CarDoorState, countFuel: Countfuel, mp3: Bool, bodyCapacityState: CarCapacityState, hatchState: hatchStateTrunk)
    //инициализируем новое свойство
    self.bodyCapacityState = bodyCapacityState
    self.hatchState = hatchState
//используем конструктор из родителя, чтобы завершить инициализацию класса
    super.init(color:color, transmission:transmission, doorState:doorState, countFuel: countfuel, mp3:mp3, hatchState: hatchStateTrunk)
}
    override func openHatch() {
    super.openHatch()
    
    func BigBodyCapacity() {
        bodyCapacityState = true  //Новый метод
    }
    func SmallBodyCapacity() {
        bodyCapacityState - false //Новый метод
    }
    var car = Car(color: .grey,transmission: .auto, doorState: .open, countFuel: .full, mp3: true )
    var car2 = trunkCar(color: .grey,transmission: .auto, doorState: .open, countFuel: .full, mp3: true, bodyCapacityState: true)
    
    
}
class sportCar:Car {
//определение нового свойства "Высокая скорость" в классе
    static var highSpeed: CarHighSpeed
    //инициализация основного конструктора класса
    init(color: UIColor,transmission: Transmission, doorState: CarDoorState, countFuel: Countfuel, mp3: Bool, highSpeed: CarHighSpeed)
    //инициализация нового свойства
    self.highspeed = highspeed
    super.init(color:color, transmission:transmission, doorState:doorState, countFuel: countfuel, mp3:mp3)
    
    override func OnWheelDrive()
        super.OnWheelDrive()
}
var car = Car(color: .grey,transmission: .auto, doorState: .open, countFuel: .full, mp3: true )
var car3 = sportCar (color: .grey,transmission: .auto, doorState: .open, countFuel: .full, mp3: true, highSpeed: CarHighSpeed)

//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление - см.выше









