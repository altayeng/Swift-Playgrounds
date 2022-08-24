//
//  03.swift
//  00_SwiftGiris
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

//öğrenci numarası, vize, final değerleri olan öğrenci listesindeki tüm öğremciler için numara ve not ortalaması ekrasna yaz
//Write the ID Numbers and GPA for all students in the student list. All students should have to ID, midterm and final points.
var ogrenciler = [[String : Int]]()
var ogrenci1 : [String : Int] =
[
    "ogr" : 1,
    "vize" : 40,
    "finals" : 60
]
var ogrenci2 : [String : Int] =
["ogr" : 2,"vize" : 20, "finals" : 50]

var ogrenci3 : [String : Int] =
[
    "ogr" : 3,
    "vize" : 80,
    "finals" : 30
]

var ogrenci4 : [String : Int] =
[
    "ogr" : 4,
    "vize" : 60,
    "finals" : 80
]

ogrenciler.append(ogrenci1)
ogrenciler.append(ogrenci2)
ogrenciler.append(ogrenci3)
ogrenciler.append(ogrenci4)

var ogr : Int
var vize : Int
var finals : Int
var ortalama : Float

for i in ogrenciler{
    ogr = i["ogr"]!
    vize = i["vize"]!
    finals = i["finals"]!
    ortalama = Float((vize+finals)/2)
    print("\(ogr) Nolu Öğrencinin Ortalaması: \(ortalama)")
}
