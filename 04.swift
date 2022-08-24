//
//  04.swift
//  00_SwiftGiris
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

// Fonksiyonlar
func func1()
{
    print("fonksiyon içi")
}
 

func func2(ad veri1 : String, _ veri2 : Int)
{
    print("\(veri2)" + veri1)
}

func2(ad: "metin", 10)
func2(ad: "ikinci", 5)

func func3()->String
{
    print("fun3")
    return "metin"
    
}

var d1 = func3()

print(d1)


func topla(a : Int, b : Int)->Int
{
    return a+b
}

var toplam = topla(a: 3, b: 5)


func topla2(sayilar : [Int])->Int
{
    var toplam = 0
    for i in sayilar
    {
        toplam += i
    }
    return toplam
}

toplam = topla2(sayilar: [3,4,6])


func topla3(sayilar : Int...)->Int
{
    var toplam = 0
    for i in sayilar
    {
        toplam += i
    }
    return toplam
}

toplam = topla3(sayilar: 2,4,5,7,8)

func func4(rol : String)
{
    var a = 10
    
    func lf1()
    {
        var d = 10
    }
    
    func lf2()
    {
        var d = 10
    }
    
    if rol == "A"
    {
        lf1()
    }
    else
    {
        lf2()
    }
}



func func5()
{}

func func5(a : Int)
{}

func func5(a : Int, b : String)
{}

func func5(b : String, a : Int)
{}

func func5(ba : String, a : Int)
{}

func func5(ad ba : String, a : Int)
{}

func func5(ba : String, a : Int)->String
{
    return ""
}

func func5(ba : String, a : Int)->Int
{
    return 1
}


func func6()
{
    func1()
    
}
func func6()-> String
{
    return ""
}
func func6()-> Int
{
    return 0
}

var v : String = func6()


func func7()-> (  (Int)->Bool  )
{
    
    func lf1 (sayi : Int)->Bool
    {
        print("lf1")
        return true
    }
    
    
    return lf1
}


var gelenF = func7()

gelenF(5)


func fun8(rol : String)->(()->Void)
{
    func fAdmin()
    {
        print("Admin işlemleri")
        
    }
    func fKullanici()
    {
        print("Kullanıcı işlemleri")
    }
    
    if rol == "A"
    {
        return fAdmin
    }
   
    
    return fKullanici
    
}


var islemFonk = fun8(rol: "A")

islemFonk()

islemFonk = fun8(rol: "K")

islemFonk()


func func9(s : (Int)->Bool)
{
    // işlem
    
    s(5)
}


func f(sayi : Int)->Bool
{
    print(sayi)
    return true
}

func9(s: f)


func listeKontrol(list : [Int], sonucFonk : (String)->Void)
{
    var sonuc = ""
    
    if list.count < 5
    {
        sonuc = "Liste küçük"
    }
    else{
        sonuc = "Liste yeterli"
    }
    
    sonucFonk(sonuc)
}


func ekranaYaz(sonuc : String)
{
    print(sonuc)
}

var sayilar = [1,2,6]

listeKontrol(list: sayilar, sonucFonk: ekranaYaz)


listeKontrol(list: sayilar, sonucFonk: {
    sonuc in
    
    
    print(sonuc)
})

listeKontrol(list: sayilar){
    (sonuc : String) in
    
    
    print(sonuc)
}

