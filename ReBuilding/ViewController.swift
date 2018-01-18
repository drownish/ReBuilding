//
//  ViewController.swift
//  ReBuilding
//
//  Created by Максим Балахонов on 14.01.18.
//  Copyright © 2018 Максим Балахонов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "ПереСтройка"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var raschetButton: UIButton!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let destinationVC = segue.destination as! MenuViewController
        destinationVC.navigationItem.title = raschetButton.currentTitle
        // Pass the selected object to the new view controller.
    }

}

