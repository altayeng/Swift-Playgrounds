//
//  Döngüler.swift
//  00_SwiftGiris
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

//Listeler
var bosListe = [String]()
print(bosListe)

let liste : [String]
//let sehirler = ["İstanbul","Ankara"] as [Any]

bosListe.append("eleman1")

print(bosListe[0]) //ilk elemanı okumak için

bosListe[0]="eleman2" //ilk elemanı değiştirdi

bosListe.removeAll() //içindeki elemanları temizliyor
bosListe = [] //yeni bir liste oluşturuyor

bosListe.reverse()
//bosListe.sorted()

print(bosListe)

bosListe = ["eleman 1", "eleman 2"]
for eleman in bosListe{
   print(eleman)
}
for i in bosListe.indices{
   print(bosListe[i])
}


//Bir sayı listesindeki tek ve çift sayıları ayrı listelere aktarıp, listenin ikisini de ayrı ayrı ekrana yazdıran kod

var sayilar = [Int]()
var ciftSayilar = [Int]()
var tekSayilar = [Int]()

sayilar = [1, 2, 3, 4, 5, 6, 7, 8, 9,10]
for i in sayilar{
   if i % 2 == 0{
       ciftSayilar.append(i)
   }else{
   tekSayilar.append(i)
   }
}

print(ciftSayilar)
print(tekSayilar)


var s = sayilar.filter(){
   $0 < 5
}
var k = [Int]()
for sayi in sayilar{
   if sayi < 5 {
       k.append(sayi)
   }
}

//set
var setEleman = Set<String>()
setEleman.insert("e1")
var set2 : Set<String> = ["e1","e2"]
var set3 : Set = ["e1","e2"]
if set2.isEmpty{ } //set2 boş ise bunu yap blabla

//Dictionary
var dic = [String : String]()

var dicKisi = [
   "ad" : "Ahmed",
   "soyad" : "Yılmaz"
]

var ad = dicKisi["ad"]
dicKisi["soyad"] = "Yıldız"
print(dicKisi)

var dicListesi = [[String : String]] ()
var dic2 = [String : [String]]()

var sayilarD = [
   "tek" : [1,3,5,7],
   "cift" : [2, 4, 6, 8]
]

for key in sayilarD.keys{
   print(sayilarD[key])
}
for value in sayilarD.values{
   print(value)
}
for (k, v) in sayilarD {
   print(k)
   print(v)
   for sayi in v{
       print(sayi)
   }
}
var sayidic = [
   "s1" : 1,
   "s2" : 2
]
var fil = sayidic.filter{
   (k,v) in
   
   return v > 1
}
print(sayidic)
print(fil)

