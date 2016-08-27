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
		
//		RMLocalStorage.sharedInstance.saveSong("Born to run", artist: "Bruce Springsteen")
//		var songs = RMLocalStorage.sharedInstance.getSongs()
//	
//		for song in songs {
//			print(song.title)
//			RMLocalStorage.sharedInstance.deleteSong(song)
//		}
//
//
//		songs = RMLocalStorage.sharedInstance.getSongs()
//
//		print(songs)
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
		
		switch (indexPath.item) {
		case 0:
			cell.backgroundCategoryImage.image = UIImage(named: "tvseries")
			cell.categoryNameLabel.text = "TV Series"
			cell.numOfItemsLabel.text = "1234"
		case 1:
			cell.backgroundCategoryImage.image = UIImage(named: "films")
			cell.categoryNameLabel.text = "Films"
			cell.numOfItemsLabel.text = "12"
		case 2:
			cell.backgroundCategoryImage.image = UIImage(named: "books")
			cell.categoryNameLabel.text = "Books"
			cell.categoryNameLabel.sizeToFit()
			cell.numOfItemsLabel.text = "3"
		case 3:
			cell.backgroundCategoryImage.image = UIImage(named: "songs")
			cell.categoryNameLabel.text = "Songs"
			cell.numOfItemsLabel.text = "4"
		default:
			cell.categoryNameLabel.text = ""
			cell.numOfItemsLabel.text = ""
		}
		cell.categoryNameLabel.textAlignment = .Center
		cell.numOfItemsLabel.textAlignment = .Center
		
		return cell
	}
	
	func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
		return CGSizeMake(self.view.frame.width, 200)
	}
	
	func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
		
	}
}


