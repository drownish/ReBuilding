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
        print(UIScreen.main.bounds.height)
        
        if UIScreen.main.bounds.height == 568.0 {
        let collectionViewLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        collectionViewLayout?.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        collectionViewLayout?.invalidateLayout()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataClass().rowOfItemsForCalculating.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemOfMenu
        cell.buttonLabel.text = DataClass().rowOfItemsForCalculating[indexPath.row]
        cell.backgroundColor = UIColor(red: 50/255.0, green: 50/255.0, blue: 50/255.0, alpha: 1.0)
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight == 667.0 {
        return CGSize(width: 101, height: 101)
        }
        else if screenHeight == 736.0{
        return CGSize(width: 113, height: 113)
        }
        else {
            return CGSize(width: 86, height: 86)
        }
    }


}
