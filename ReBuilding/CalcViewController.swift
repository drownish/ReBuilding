//
//  CalcViewController.swift
//  ReBuilding
//
//  Created by Максим Балахонов on 18.01.18.
//  Copyright © 2018 Максим Балахонов. All rights reserved.
//

import UIKit

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
        var textOnDisplay = 0
        textOnDisplay = (textOnDisplay*10) + sender.tag
        calcDisplay.self.text = String(textOnDisplay)
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











