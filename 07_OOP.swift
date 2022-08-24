//
//  07_OOP.swift
//  01_OOP
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

// Struct
class dikdortgenC
{
   var kisaKenar : Float = 0
   var uzunKenar : Float = 0
}

struct dikdortgen
{
   var kisaKenar : Float = 0
   var uzunKenar : Float = 0
}

var dc = dikdortgenC()
var ds = dikdortgen(kisaKenar: 6, uzunKenar: 8)

// Encapsulation
class Kisi
{
   var yas = 10
   
   var y : Int?
   {
       /*
       get
       {
           return yas
       }
       set
       {
           if newValue >= 0 && newValue < 150
           {
               yas = newValue
                
           }
       }*/
       
       willSet
       {
           
       }
       didSet
       {
           
       }
       
   }
   
   func f()
   {}
}

var kisi = Kisi()
kisi.y = 10000
kisi.f()

// static
class C
{
   var d = 0
   static var ds = 10
   
   func f1()
   {
       
   }
   
   static func f2()
   {
       
       
   }
}


var c1 = C()
var c2 = C()

c1.d = 5
c2.d = 15

C.ds = 100
C.f2()

C.f2()

c1.f1()

// Enumaration
enum Cinsiyet
{
   case Erkek, Kadin
}

var cins = Cinsiyet.Kadin
var ci2 : Cinsiyet = Cinsiyet.Erkek

var cb = true


if cb
{}


if cins == Cinsiyet.Erkek
{}

enum Cinsiyet2 : String
{
   case Erkek = "E"
   case Kadin = "K"
   
   
   var index : Int
   {
       switch self
       {
           case .Erkek : return 0
           case .Kadin : return 1
       }
   }
   
   var aciklama : String
   {
       switch self
       {
           case .Erkek : return "Erkek"
           case .Kadin : return "Kadin"
       }
       
       
   }
   
   static func elemanlariGetir()->[String]
   {
       return [Cinsiyet2.Erkek.aciklama, Cinsiyet2.Kadin.aciklama]
   }
   
   
}

var cins2 = Cinsiyet2.Erkek
Cinsiyet2.elemanlariGetir()

var cins3 = Cinsiyet2.Kadin

if cins2.rawValue == "E"
{}

cins3 = Cinsiyet2.init(rawValue: "E")!



