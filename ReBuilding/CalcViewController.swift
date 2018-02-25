//
//  CalcViewController.swift
//  ReBuilding
//
//  Created by Максим Балахонов on 18.01.18.
//  Copyright © 2018 Максим Балахонов. All rights reserved.
//

import UIKit

var x: Double = 0
var y: Double = 0

class CalcViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Калькулятор"
        for i in 1...(outletsOfCalcButtons.count - 1) {
        outletsOfCalcButtons[i].layer.borderWidth = 0.5   // толщина обводки
        outletsOfCalcButtons[i].layer.borderColor = (UIColor(red: 89/255.0, green: 89/255.0, blue: 89/255.0, alpha: 0.85)).cgColor
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var outletsOfCalcButtons: [UIButton] = []
    

    @IBOutlet weak var calcDisplay: UILabel!

    @IBAction func numbers(_ sender: UIButton) {
        
        x = Double(sender.tag)
        calcDisplay.self.text = String(x)

    }
    
    
    @IBAction func copyButton(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Скопировано", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func clearButton(_ sender: UIButton) {
        calcDisplay.self.text = String(0)
    }
    
    @IBAction func actions(_ sender: UIButton) {
        switch sender.tag {
        case 1001:
            print("/")
        case 1002:
            print("x")
        case 1003:
            print("-")
        case 1004:
            print("+")
        case 1005:
            print("=")
        default:
            print("Error")
        }
    
    }
    
}


class segueToCalc: UIStoryboardSegue {
    /*do {
    let transition = CATransition()
    transition.duration = 0.5
    transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
    transition.type = kCATransitionFade
    self.navigationController?.view.layer.add(transition, forKey: nil)
    _ = self.navigationController?.popToRootViewController(animated: false)
    }
 */
}











