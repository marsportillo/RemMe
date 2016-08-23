//
//  ViewController.swift
//  RemTV
//
//  Created by marco sportillo on 22/08/16.
//  Copyright © 2016 IQUII. All rights reserved.
//

import UIKit
import RealmSwift
class RMMainViewController: RMViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var categoriesCollectionView: RMCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		let realm = try! Realm()
		let TVSeries = realm.objects(RMTVSerie.self)
		let RMBooks = realm.objects(RMBook.self)
		let RMSongs = realm.objects(RMSong.self)
		let RMFilms = realm.objects(RMFilm.self)
		
		let res = TVSeries.count + RMBooks.count + RMSongs.count + RMFilms.count
		print("Risultati: ", res)
		
		let bB = RMTVSerie()
		bB.title = "Breaking Bad"
		
//		try! realm.write({ 
//			realm.add(bB)
//		})
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
		cell.categoryNameLabel.sizeToFit()
		cell.numOfItemsLabel.sizeToFit()
		
		return cell
	}
	
	func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
		return CGSizeMake(self.view.frame.width, 200)
	}
}


