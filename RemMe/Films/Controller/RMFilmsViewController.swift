//
//  RMFilmsViewController.swift
//  RemMe
//
//  Created by marco sportillo on 23/08/16.
//  Copyright © 2016 msportillo.me. All rights reserved.
//

import UIKit

class RMFilmsViewController: RMViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Films"
	}
}


extension RMFilmsViewController:UITableViewDelegate {
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		print("IndexPath: ", indexPath.row)
	}
}


extension RMFilmsViewController:UITableViewDataSource {
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 4
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let row = tableView.dequeueReusableCellWithIdentifier("filmsCell", forIndexPath: indexPath) as!RMFilmsTableViewCell
		
		row.titleLabel.text = "Film"
		row.ratingsLabel.text = "Rating: 4.5/5"
		
		return row
	}
}