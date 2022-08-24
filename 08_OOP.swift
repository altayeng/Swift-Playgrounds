//
//  08_OOP.swift
//  01_OOP
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

// Kalıtım

class Sekil
{
    var kenarSayisi = 0
    
    init(ks : Int)
    {
        kenarSayisi = ks
    }
    
    func ciz()
    {
        print("Şekil çiz")
    }
}

class Kare : Sekil
{
    //var kenarSayisi = 4
    
    override func ciz() {
        super.ciz()
        print("Kare çiz")
    }
    
    func karef()
    {
        
    }
}

class Dikdortgen : Sekil
{
  //  var kenarSayisi = 4
    func fd()
    {}
}


var kare = Kare(ks: 4)
kare.ciz()
kare.karef()

//var d : Dikdortgen = Sekil(ks: 4)

var s : Sekil = Dikdortgen(ks: 4)

(s as! Dikdortgen).fd()

var sekiller = [Sekil]()
sekiller.append(Kare(ks: 4))
sekiller.append(Dikdortgen(ks: 4))

for sekil in sekiller
{
    if sekil is Kare
    {
        var k = sekil as! Kare
        k.karef()
    }
    else if sekil is Dikdortgen
    {
        (sekil as! Dikdortgen).fd()
    }
}
/*

Kara Araçları Modellemesi
///////////////////////////////////////////
Farklı türlerdeki araçların modellemesi yapılacaktır.
- Araç türleri olarak Otomobil, kamyon, otobüs olacaktır.

- Tüm Araçların tekerlek sayısı, yolcu kapasitesi, ileri-geri gidebilme özellikleri olacaktır.

- Otomobillerin yolcu kapasitesi en fazla 4 kişi olabilirken, bu sayı kamyonlarda 2 otobüslerde 55 olacaktır.

- Kamyonların yolcular haricinde yük taşıma kapasitesi de olacaktır.

- Kamyon ve otobüslerde 88 km/h hız limiti bulunacaktır.
- Otobüsler yolcunun yanında bagaj taşıma kapasitesi ve mutfak özelliği bulunacaktır.
*/

/*
 Different types of vehicles will be modeled.
 - There will be Cars, trucks, buses as vehicle types.

 - All Vehicles will have the number of wheels, passenger capacity, forward-backward features.

 - While the passenger capacity of cars can be maximum 4 people, this number will be 2 in trucks and 55 in buses.

 - Trucks will have cargo carrying capacity besides passengers.

 - Trucks and buses will have a speed limit of 88 km/h.
 - Buses will have luggage carrying capacity and kitchen feature next to the passenger.
 */

class Car{
    var numberWheels : Int!
    var maxPassengers : Int
    init(mp : Int){
        maxPassengers = mp
    }
    
    func goForward() -> String! {
        return ("forward")
    }
    func goBackward() -> String! {
        return ("backward")
    }
}

class Auto : Car{
    init(){
        super.init(mp: 4)
    }
}

class HeavyCar : Car{
    let speedLimit = 88
}

class Truck : HeavyCar{
    var loadCapacity : Int!
    init(){
        super.init(mp: 2)
    }
}

class Bus : HeavyCar{
    var luggageCapacity : Int!
    var kitchenType : String!
    init(){
        super.init(mp: 55)
    }
}
