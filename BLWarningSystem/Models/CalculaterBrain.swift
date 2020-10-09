//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Souichi Tsujimoto on 4/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
struct CalculaterBrain {
    var sysValue : String?
    var diaValue : String?
    var sysColor : UIColor?
    var diaColor : UIColor?
    
    
    mutating  func checkBlValue(sysBlValue: Float,diaBlValue: Float, age:Int) {
        var ageVn = Age()
        var sysLowBL :Float
        var sysHighBL : Float
        var diaLowBL: Float
        var diaHighBL: Float
        
        
        sysLowBL = ageVn.getsysBllow(age: age)
        sysHighBL = ageVn.getsysBlHigh(age: age)
        diaLowBL = ageVn.getdiaBlLow(age: age)
        diaHighBL = ageVn.getdiaBlHigh(age: age)
        
            switch sysBlValue {
            case let x where x < sysLowBL :
                 sysValue = "Low"
                sysColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
                
            case let x where x == sysLowBL :
                 sysValue = "Normal"
                 sysColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                
            case let x where x <= sysHighBL :
                 sysValue = "Normal"
                 sysColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                
            case let x where x > sysHighBL :
                 sysValue = "High"
                 sysColor = #colorLiteral(red: 0.664064765, green: 0, blue: 0.08505760878, alpha: 1)
                
            default :
                 sysValue = "Unknown"
                 sysColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                
        
    }
        switch diaBlValue {
                case let x where x < diaLowBL :
                     diaValue = "Low"
                     diaColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
                    
                case let x where x == diaLowBL :
                     diaValue = "Normal"
                     diaColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                    
                case let x where x <= diaHighBL :
                     diaValue = "Normal"
                     diaColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                    
                case let x where x > diaHighBL :
                     diaValue = "High"
                     diaColor = #colorLiteral(red: 0.664064765, green: 0, blue: 0.08505760878, alpha: 1)
                    
                default :
                     diaValue = "Unknown"
                     diaColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                    
            
        }
        
    }
           
        
        
    mutating func getSysValue() -> String {
        
        return sysValue ?? "Unknown"
    }
    func getDiaValue() -> String{
        return diaValue ?? "Unknown"
    }
    func getSysColor() -> UIColor {
        return sysColor ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    func getDiaColor() -> UIColor {
            return diaColor ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    
    
    
}

