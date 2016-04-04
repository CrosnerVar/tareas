//: Playground - noun: a place where people can play

import UIKit

var rango = 0...100
for i in rango{
    if i == 0{
        print ("# \(i)"  + " Cero!!! ")
    }else if (i < 41) && (i>29) {
        print ("# \(i)"  + " Viva Swift!!! ")
    }else if (i % 5) == 0{
        print ("# \(i)"  + " Bingo!!! ")
    }else if i % 2 == 0{
        print ("# \(i)" + " par!!!" )
    }else if i % 2 != 0{
        print ("# \(i)" + " impar!!!" )
    }
}