//
//  05.swift
//  00_SwiftGiris
//
//  Created by Altay Kırlı on 24.08.2022.
//

import Foundation

//Verilen sayı listesindeki verileri kontrol edip. Eğer listedeki eleman sayısı 10 dan küçükse string olarak sonuc değeri alan bir işlevi tetikleyen ve parametre olarak "Eleman sayısı yetersiz" metnini gönderen,  eğer 10 dan büyükse sayıların aritmetik ortalamasını hesaplayıp kendisine gönderilen farklı bir işleve gönderen fonksiyonu yazınız.

// Checking the data in the given number list. If the number of elements in the list is less than 10, code a function that triggers a function that receives the result as a string and sends the text "Insufficient number of elements" as a parameter, and if it is greater than 10, it calculates the arithmetic mean of the numbers and sends it to a different function that is sent to it.

let givenNumbers : [Double] = [1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.10]

func calculator(numbers : [Double], error : ((String)->Void), result : ((_ average : Double)-> Void)){
    
    if numbers.count < 10{
        checkCount(errorString: "Eleman Sayısı Yetersiz")
    }else{
    var sum : Double = 0

    for i in numbers{
        sum = sum + i
    }
    
    let average = sum / Double(numbers.count)
    result(average)
    }
}

func checkCount(errorString:String){
    print(errorString)
}

func printF(average : Double){
    print("Ortalama: \(average)")
}

calculator(numbers: givenNumbers, error:checkCount, result:printF)
