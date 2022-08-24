//
//  09_OOP.swift
//  01_OOP
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

//Protocol //Kalıtımla ilgisi yoktur, standart oluşturmak için kullanılır.

//Protocol has nothing to do with Extensions , it is used to create a standard.

protocol P1{
    var d1 : Int{get set}
    func f1()
    init(s1 : String)
    //func f2() {print("deneme")} //bu çalışmaz. burada sadece fonksiyon tanımlayabilirsin içine bir şey yazamazsın.
}

protocol P2{ //P2 : P1 de yapabiliriz kabul eder.
    func f2()
}

class C0 : P1{
    var d1 : Int
    func f1(){
    }
    
    required init(s1: String) {
        d1 = 10
    }
}

class C2{}

/*
class C1 : C2,P2,P1{
    required init(s1: String) {
        
    }
    
    func f2() {
    
    }
    
    var d1: Int
    
    func f1() {
    
    }
     
    
}
*/

// Çalışan modellemesi
// Çalışan rolleri olarak Müdür, Müdür yardımcısı, Yazılımcı, Temizlik görevlisi gibi çalışanların bulunduğu bir iş yerinde çalışanların bilgilerinin tutulduğu yapı için Çalışan ve Yöneticilerin standartlarının belirlendiği yapının oluşturulması

// Çalışanlar için SicilNo, Ad, Soyad zorunludur. Her bir çalışan izin kullanabilir (işlev)

// Yöneticiler Çalışanın tüm özelliklerini kapsamakla birlikte Altında çalışanları kontol etmek zorundadır (işlev)

/*
 // Employee modeling
 // Establishing the structure where the standards of the Employees and Managers are determined for the structure where the information of the employees is kept in a workplace where employees such as Manager, Assistant Manager, Software Engineer, Cleaning Staff are available as employee roles

 // Registry Number, Name, Surname are mandatory for employees. Each employee can use leave (function)

 // Managers have to control the Employees under it, including all the features of the Employee (function)
 */

enum CalisanRol{
    case Mudur
    case MudurY
    case Yazilimci
    case TemizlikGorevlisi
}

protocol Calisan{
    var yapilanIs : CalisanRol{get set} //enum kullanıldığı için bunu yazmak zorundayız
    var sicilNo : Int{get set}
    var Ad  : String{get set}
    var Soyad : String{get set}
    func izinKullan()
}

protocol Yonetici : Calisan {
    func calisanKontrol()
}

class Calisanlar : Calisan{
    var sicilNo: Int
    
    var Ad: String
    
    var Soyad: String
    
    var yapilanIs: CalisanRol
    
    func izinKullan() {   }
    
    init(yapilanIs : CalisanRol){
        self.yapilanIs = yapilanIs
        sicilNo = 1
        Ad = ""
        Soyad = ""
    }
}

class YonetimKadro : Calisanlar, Yonetici{
    
    func calisanKontrol(){
    }
}

var calisan1 = YonetimKadro(yapilanIs: .Mudur)
var calisan2 = YonetimKadro(yapilanIs: .MudurY)
var calisan3 = Calisanlar(yapilanIs: .Yazilimci)
var calisan4 = Calisanlar(yapilanIs: .TemizlikGorevlisi)

 
