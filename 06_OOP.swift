//
//  06.swift
//  01_OOP
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

//CLASS GİRİŞ
class SinifinAdi{
    
}

class Sandalye{
    var bacakSayisi : Int
    var ad : String?
    
    weak var sa = SinifinAdi()
    init(ad : String){ //func parametresini let algıladığı için let yapamzsın erroru veriyor. O yüzden self ekledik
        self.ad = ad
        bacakSayisi = 0
    }
     
    func f1(){
        
    }
}

var s1 = Sandalye(ad:"S1")
var s2 = Sandalye(ad:"S2")
s1 = s2

print(s1.bacakSayisi)
s2.bacakSayisi = 4
print(s2.bacakSayisi)
print(s1.bacakSayisi)

print(s1)
s1.f1()

//ÖRNEK

/*Bir öğrenci uygulama modelinin oluşturulması
 
 Ad, soyad, numara ve aldığı dersler bulunan öğrenciler olacaktır.

 Öğrencilerin derslerinin ad, vize ve final notları olabilir.

 Öğrencinin derslerinin not ortalaması hesaplanabilir.

 Öğrencinin sınıf geçme durumu hesaplanabilir. Tüm derslerin aritmetik ortalaması 40 ın altındaysa kalır. Üstündeyse geçer.

 3 farklı öğrenci oluşturup bu öğrencilerin notlarını girerek geçti kaldı durumlarını ekrana yazdıralım. */

/*
 Creating a student practice model
  
   There will be students with name, surname, number and courses taken.

   Students' courses may have names, midterms and final grades.

   The grade point average of the student's courses can be calculated.

   The grade passing status of the student can be calculated. It fails if the arithmetic average of all courses is below 40. Above it passes.

   Let's create 3 different students and enter the grades of these students and print the pass-fail status on the screen.
 */

class Ders{
    var ad : String
    var Vize : Double?
    var Final : Double?
    init (ad:String){
        self.ad = ad
    }
    func ortalamaHesapla() -> Double{
        return ((Vize ?? 0) + (Final ?? 0)) / 2
    }
}

class Ogrenci{
    let Ad : String
    let Soyad : String
    let Numara : Int
    var Dersler = [Ders]()
    
    init(ad: String, soyad: String, numara: Int) {
        Ad = ad
        Soyad = soyad
        Numara = numara
    }
    func durumHesapla() -> String{
        var toplamNot = 0.0
        
        for i in Dersler{
            toplamNot += i.ortalamaHesapla()
        }
        return toplamNot / Double(Dersler.count) < 40 ? "Kaldı" : "Geçti"
    }
}

var o1 = Ogrenci(ad: "altay", soyad: "kırlı", numara: 1)
var o2 = Ogrenci(ad: "ahmet", soyad: "aedk", numara: 2)
var o3 = Ogrenci(ad: "mehmet", soyad: "measdk", numara: 3)

var d1 = Ders(ad: "Matematik")
var d2 = Ders(ad: "Fizik")

d1.Vize = 60
d1.Final = 40
d2.Vize = 100
d2.Final = 10
o1.Dersler.append(d1)
o1.Dersler.append(d2)


d1 = Ders(ad: "Matematik")
d2 = Ders(ad: "Fizik")
d1.Vize = 60
d1.Final = 80
d2.Vize = 10
d2.Final = 10
o2.Dersler.append(d1)
o2.Dersler.append(d2)


d1 = Ders(ad: "Matematik")
d2 = Ders(ad: "Fizik")
d1.Vize = 30
d1.Final = 20
d2.Vize = 10
d2.Final = 40
o3.Dersler.append(d1)
o3.Dersler.append(d2)

print("O1 Durum: \(o1.durumHesapla())")
print("O2 Durum: \(o2.durumHesapla())")
print("O3 Durum: \(o3.durumHesapla())")



