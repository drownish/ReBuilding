//
//  RaschetViewController.swift
//  ReBuilding
//
//  Created by Максим Балахонов on 20.01.18.
//  Copyright © 2018 Максим Балахонов. All rights reserved.
//

import UIKit

class RaschetViewController: UITableViewController {

    
    var textForTitleLabel = ""
    var dataForRaschet = [150: raschetClass(title: "", kindOfRow: 150)]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = textForTitleLabel
        print(dataForRaschet)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    
    /*func showPopup() {
        self.view.addSubview(popupView)
        popupView.center = self.tableView.center
        popupView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        popupView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.popupView.alpha = 1
            self.popupView.transform = CGAffineTransform.identity
        }
    }*/
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else if section == 2 {
            return 1
        }
        else {
            return dataForRaschet.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
        if indexPath.section == 0 {
            cell.displayCell.isHidden = true
            return cell
        }
        
        else if indexPath.section == 2 {
            cell1.goButton.isHidden = false
            cell1.goButton.layer.cornerRadius = 10
            cell1.backgroundColor = tableView.backgroundColor
            cell1.layer.borderColor = UIColor.blue.cgColor
            return cell1
        }
        
        else {
            cell.titleCell.text = dataForRaschet[indexPath.row]?.title
            if dataForRaschet[indexPath.row]?.kindOfRow == 1 {
                cell.displayCell.text = "Выбрать"
            }
            else {
            cell.displayCell.text = String(0)
            }
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Комната"
        }
            
        else if section == 2 {
            return nil
        }
            
        else {
            return "Параметры"
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 2 {
            return 0
        }
        else {
            return 20
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.isScrollEnabled = false
            //showPopup()
    }
    
    /*override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 2 {
            return 30
        }
        else {
            return 10
        }
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
