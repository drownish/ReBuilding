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
    
    @IBAction func testBut(_ sender: UIButton) {
        let tableViewController = UITableViewController()
        tableViewController.modalPresentationStyle = UIModalPresentationStyle.popover
        tableViewController.preferredContentSize = CGSize(width: 50, height: 50)

        
        present(tableViewController, animated: true, completion: nil)
        
        let popoverPresentationController = tableViewController.popoverPresentationController
        popoverPresentationController?.sourceView = sender
        popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: sender.frame.size.width, height: sender.frame.size.height)
    }
    @IBOutlet weak var raschetButton: UIButton!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        if segue.identifier == "menuSegue" {
        let destinationVC = segue.destination as! MenuViewController
        destinationVC.navigationItem.title = raschetButton.currentTitle
        // Pass the selected object to the new view controller.
        }
    }

}

