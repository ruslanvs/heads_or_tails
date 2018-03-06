//: Playground - noun: a place where people can play

import UIKit

func tossCoin() -> String {
    var flip = arc4random_uniform(2)
    var side = (( flip == 0 ) ? "Heads" : "Tails")
    print( side )
    return side
}

let num = 10
var head_count = 0

func tossMultipleCoins( times: Int ) -> Double {
    for i in 1...times{
//        var side = String()
//        side = tossCoin()
//        head_count = ( side == "Heads") ? head_count+=1 : head_count
        var side = tossCoin()
        if side == "Heads" {
            head_count+=1
        }
    }
    var ratio = Double( head_count ) / Double( num )
    print( "heads ratio was \( head_count ) out of \( num ) or \( ratio )" )
    return ratio
}

tossMultipleCoins( times: num )
