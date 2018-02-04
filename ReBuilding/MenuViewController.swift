//
//  MenuViewController.swift
//  ReBuilding
//
//  Created by Максим Балахонов on 15.01.18.
//  Copyright © 2018 Максим Балахонов. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MenuViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIScreen.main.bounds.height == 568.0 {
        let collectionViewLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        collectionViewLayout?.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        collectionViewLayout?.invalidateLayout()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rowOfClassesForCalculating.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemOfMenu
        cell.buttonLabel.text = rowOfClassesForCalculating[indexPath.row].nameOfItem
        cell.buttonImage.image = rowOfClassesForCalculating[indexPath.row].imageOfItem
        //cell.backgroundColor = UIColor(red: 50/255.0, green: 50/255.0, blue: 50/255.0, alpha: 1.0)
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight == 667.0 {
        return CGSize(width: 101, height: 140)
        }
        else if screenHeight == 736.0{
        return CGSize(width: 113, height: 150)
        }
        else {
            return CGSize(width: 86, height: 120)
        }
    }
    
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destinationVC = segue.destination as! RaschetViewController
        destinationVC.navigationItem.title = rowOfClassesForCalculating[(collectionView?.indexPathsForSelectedItems?[0].row)!].nameOfItem
        let nameWithInc = rowOfClassesForCalculating[(collectionView?.indexPathsForSelectedItems?[0].row)!].nameOfItemWithInc
        destinationVC.textForTitleLabel =
        "Расчет \(nameWithInc)"
    }
    


}
