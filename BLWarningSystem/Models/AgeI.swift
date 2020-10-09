//
//  AgeI.swift
//  BMI Calculator
//
//  Created by Souichi Tsujimoto on 5/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
struct AgeIndex {
    let ageLow : Int
    let ageHigh : Int
    let sysBlLow : Float
    let sysBlHigh : Float
    let diaBlLow : Float
    let diaBlHigh :Float
    
    
}
struct Age {
    let ageI = [
        AgeIndex(ageLow: 0, ageHigh: 0, sysBlLow: 75, sysBlHigh: 100, diaBlLow: 50, diaBlHigh: 75),
        AgeIndex(ageLow: 1, ageHigh: 5, sysBlLow: 80, sysBlHigh: 110, diaBlLow: 55, diaBlHigh: 79),
        AgeIndex(ageLow: 6, ageHigh: 13, sysBlLow: 90, sysBlHigh: 115, diaBlLow: 60, diaBlHigh: 80),
        AgeIndex(ageLow: 14, ageHigh: 19, sysBlLow: 105, sysBlHigh: 120, diaBlLow: 73, diaBlHigh: 81),
        AgeIndex(ageLow: 20, ageHigh: 24, sysBlLow: 108, sysBlHigh: 132, diaBlLow: 75, diaBlHigh: 83),
        AgeIndex(ageLow: 25, ageHigh: 29, sysBlLow: 109, sysBlHigh: 133, diaBlLow: 76, diaBlHigh: 84),
        AgeIndex(ageLow: 30, ageHigh: 34, sysBlLow: 110, sysBlHigh: 134, diaBlLow: 77, diaBlHigh: 85),
        AgeIndex(ageLow: 35, ageHigh: 39, sysBlLow: 111, sysBlHigh: 135, diaBlLow: 78, diaBlHigh: 86),
        AgeIndex(ageLow: 40, ageHigh: 44, sysBlLow: 112, sysBlHigh: 137, diaBlLow: 79, diaBlHigh: 87),
        AgeIndex(ageLow: 45, ageHigh: 49, sysBlLow: 115, sysBlHigh: 139, diaBlLow: 80, diaBlHigh: 88),
        AgeIndex(ageLow: 50, ageHigh: 54, sysBlLow: 116, sysBlHigh: 142, diaBlLow: 81, diaBlHigh: 89),
        AgeIndex(ageLow: 55, ageHigh: 59, sysBlLow: 118, sysBlHigh: 144, diaBlLow: 82, diaBlHigh: 90), 
        AgeIndex(ageLow: 60, ageHigh: 100, sysBlLow: 121, sysBlHigh: 147, diaBlLow: 83, diaBlHigh: 91)]
       
    mutating   func getsysBllow(age: Int) ->Float {
        var lowSysBL :Float = 0.0
        for index in ageI {
            if (age >= index.ageLow) && (age <= index.ageHigh) {
                lowSysBL = index.sysBlLow
            }
        }
        return lowSysBL
    }
    mutating   func getsysBlHigh(age: Int) ->Float {
        var highSysBL: Float = 0.0
        for index in ageI {
            if (age >= index.ageLow) && (age <= index.ageHigh) {
                highSysBL = index.sysBlHigh
            }
        }
        return highSysBL
    }
    mutating   func getdiaBlLow(age: Int) ->Float {
           var lowDiaBL :Float = 0.0
           for index in ageI {
               if (age >= index.ageLow) && (age <= index.ageHigh) {
                   lowDiaBL = index.diaBlLow
               }
           }
           return lowDiaBL
       }
    mutating   func getdiaBlHigh(age: Int) ->Float {
           var highDiaBL :Float = 0.0
           for index in ageI {
               if (age >= index.ageLow) && (age <= index.ageHigh) {
                   highDiaBL = index.diaBlHigh
               }
           }
           return highDiaBL
       }
}
