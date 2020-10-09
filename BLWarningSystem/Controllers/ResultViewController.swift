//
//  ResultViewController.swift
//  BL Warning System
//
//  Created by Souichi Tsujimoto on 4/6/20.
//  Copyright © 2020 Souichi Tsujimoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var sysValue : String = "none"
    var diaValue : String = "none"
    var sysColor : UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    var diaColor : UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

   // var calculaterBrain = CalculaterBrain()
 
    @IBOutlet weak var sysLabel: UILabel!
    @IBOutlet weak var diaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        sysLabel.text  = sysValue
        diaLabel.text = diaValue
        sysLabel.backgroundColor = sysColor
        diaLabel.backgroundColor = diaColor
       
    }
    
    @IBAction func resetButtunPressed(_ sender: UIButton) {
    
     
           self.dismiss(animated: true, completion: nil)
           
        
    } 
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
