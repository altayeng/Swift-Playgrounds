//
//  Giris.swift
//  00_SwiftGiris
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

print("Hello, World!")
var adi = 5
var sayi : Int
sayi = 10
var ondalikli : Float = 10.5
var dogru = true
var metin = "metin degeri"
metin = "kasdlasd"

var metin2 = "dakdjsakjda"
metin2 = "askdjasd"

print("yaş: " + String(10))
var metin3 = "yaş: \(ondalikli)" + "sdd"
print(metin3)

var d1 : Double = 0.0
var i1 = 10
d1 = Double(i1)
var t1 = (1, "metin", 3) //değişkenleri tek değişken içinde tutmaya yarıyor touple
print(t1.2)


var d2 : Double?
d2 = 0.0
print(d2 ?? "boş")

var i2 = 10
var i3 = 20
var d3 = 10.9
var toplam = Double(i2 + i3) + d3

toplam = toplam + 1
toplam += 2

// && ve demek
// || veya demek

var skor = 10

if skor < 10 {
    print("küçük")
}
else if skor < 20{}

else {
    print("değil")
}

var opInt : Int? = 100

if opInt != nil{
    print("küçük")
    print(opInt!)
}
//if let eğer opInt nil mi onu kontrol ediyor ve nil değilse yap diyor. Ama fazladan 2 değişken atıyor.
if let i = opInt{
    print(i)
}

//switch - case örneği
var sayac = 10
switch sayac {
    case 1:
        print("bir")
    case 2:
        print("iki")
    case 3,4: //3 ya da 4 ise (eşitlik)
        print("")
    case 6...70: //6 ile 70 araaında ise (aralık)
        print("")
    case let a where a<10 && a>5: //(if gibi kullanımı, performans kaybı)
        print("")
        
    default:
        break
}

//girilen nota göre harf değeri
print("notu girin")
let not = Int(readLine()!) ?? 0 //geçerli değer değilse 0 ata demek

if not > 99 {
    print("A")
}
else if not < 100 && not > 80{
    print("B")
}
else if not < 80 && not > 50{
    print("C")
}
else if not < 50 && not > 0{
    print("F")
}
            
//while
var sayac1 = 10
while sayac1 < 10
{
    print(sayac1)
    sayac1 += 1
}

repeat{
    print(sayac1)
    sayac1 += 1
}while sayac1 < 10
 

for i in 0..<10{
    print(i)
    if i > 3 {
        break
    }
    if i > 2 {
        continue
    }
    print(i)
}


//100 üyeden 1km yakında kaç kişi var?
  //solution 1
var ici : Int = 0
var coor : Double = 0

for i in 0..<100{
    let randomDoubleX = Double.random(in: 0...2)
    print(randomDoubleX)
    let randomDoubleY = Double.random(in: 0...2)
    print(randomDoubleY)
    coor = randomDoubleX + randomDoubleY
    
    if coor > 1.5{
        ici += 1
    }
    print(i)
}
print("\nicindekiler: \(ici)")
print("dışındakiler: \(100-ici)")

    //solution 2
var yakinSayi = 0
var x : Double = 0
var y : Double = 0
for _ in 0..<100 {
    x = Double.random(in: 0...1)
    y = Double.random(in: 0...1)
    
    if (x*x + y*y) <= 1{
        yakinSayi += 1
    }
}

