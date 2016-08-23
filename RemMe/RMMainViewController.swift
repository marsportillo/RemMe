//
//  ViewController.swift
//  RemTV
//
//  Created by marco sportillo on 22/08/16.
//  Copyright © 2016 IQUII. All rights reserved.
//

import UIKit

class RMMainViewController: RMViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var categoriesCollectionView: RMCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
	{
		return 4;
	}
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("mainCell", forIndexPath: indexPath) as! RMMainCollectionViewCell
		
		cell.categoryNameLabel.text = "Text"
		cell.categoryNameLabel.sizeToFit()
		cell.numOfItemsLabel.text = "12323"
		cell.numOfItemsLabel.sizeToFit()
		return cell
	}
	
	func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
		return CGSizeMake(self.view.frame.width, 200)
	}
}


