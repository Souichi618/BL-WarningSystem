//
//  CalculateViewController.swift
//  Blood Warning System
//
//  Created by Souichi Tsujimoto  14 June 2020
//  Copyright © 2020 Souichi Tsujimoto All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var ageLabrel: UILabel!
   
    @IBOutlet weak var sysSlider: UISlider!
    
    @IBOutlet weak var didSlider: UISlider!
    
    
    @IBOutlet weak var diaSliderLabel: UILabel!
    @IBOutlet weak var sysLabel: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    
    
    var sysValue : Float = 0.0
    var diaValue : Float = 0.0
    var age : Int = 0
    
    var calculaterBrain = CalculaterBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ageSliderChanged(_ sender: UISlider) {
        ageLabrel.text = String(format: "%.0f", sender.value) 
    }
    
    @IBAction func sysSliderChanged(_ sender: UISlider)
    {
        sysLabel.text = String(format: "%.1f", sender.value) + "mmhg"
    }
    
    @IBAction func diaSliderChanged(_ sender: UISlider)
    {
        diaSliderLabel.text = String(format: "%.1f", sender.value) + "mmhg"
    }
    
    @IBAction func checkBL(_ sender: UIButton) {
        sysValue = sysSlider.value
        diaValue = didSlider.value
          age = Int(ageSlider.value)
        
        
       
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
      
            
 
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               if segue.identifier == "goToResult" {
                 
                   let destinationVC = segue.destination as! ResultViewController
                calculaterBrain.checkBlValue(sysBlValue: sysValue, diaBlValue: diaValue, age: age)
                destinationVC.sysValue = calculaterBrain.getSysValue()
                destinationVC.diaValue = calculaterBrain.getDiaValue()
                destinationVC.sysColor = calculaterBrain.getSysColor()
                destinationVC.diaColor = calculaterBrain.getDiaColor()
                
                    
               }
    }
}

