//
//  ViewController.swift
//  RemTV
//
//  Created by marco sportillo on 22/08/16.
//  Copyright © 2016 msportillo.me. All rights reserved.
//

import UIKit

class RMMainViewController: RMViewController {

    @IBOutlet weak var categoriesCollectionView: RMCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension RMMainViewController:UICollectionViewDelegate {
	func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {

		
		switch(indexPath.item) {
		case 0:
			print("IndexPath: ", indexPath.item)
			let storyboard = UIStoryboard(name: "TVSeries", bundle: nil)
			let vc = storyboard.instantiateViewControllerWithIdentifier("tvSeriesVC") as! RMTVSeriesViewController
			self.navigationController?.pushViewController(vc, animated: true)
			
		case 1:
			let storyboard = UIStoryboard(name: "Films", bundle: nil)
			let vc = storyboard.instantiateViewControllerWithIdentifier("filmsVC") as! RMFilmsViewController
			self.navigationController?.pushViewController(vc, animated: true)
			print("IndexPath: ", indexPath.item)
		
		case 2:
			let storyboard = UIStoryboard(name: "Books", bundle: nil)
			let vc = storyboard.instantiateViewControllerWithIdentifier("booksVC") as! RMBooksViewController
			self.navigationController?.pushViewController(vc, animated: true)
			print("IndexPath: ", indexPath.item)
		case 3:
			let storyboard = UIStoryboard(name: "Songs", bundle: nil)
			let vc = storyboard.instantiateViewControllerWithIdentifier("songsVC") as! RMSongsViewController
			self.navigationController?.pushViewController(vc, animated: true)
			print("IndexPath: ", indexPath.item)
			
		default:
			print("IndexPath: ", indexPath.item)
		}
	}
}

extension RMMainViewController:UICollectionViewDataSource {
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
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

}

extension RMMainViewController {
	func testData() {
		RMLocalStorage.sharedInstance.saveSong("Born to run", artist: "Bruce Springsteen")
		var songs = RMLocalStorage.sharedInstance.getSongs()
		for song in songs {
			print(song.title)
			RMLocalStorage.sharedInstance.deleteSong(song)
		}
		songs = RMLocalStorage.sharedInstance.getSongs()
	}
}