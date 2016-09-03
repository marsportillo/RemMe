//
//  RMBooksViewController.swift
//  RemMe
//
//  Created by marco sportillo on 02/09/16.
//  Copyright © 2016 IQUII. All rights reserved.
//

import UIKit

class RMBooksViewController: RMViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		self.setBackButtonItemInNavBar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension RMBooksViewController:UITableViewDelegate {
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
				print("IndexPath: ", indexPath.row)
	}
}


extension RMBooksViewController:UITableViewDataSource {
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 4
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let row = tableView.dequeueReusableCellWithIdentifier("booksCell", forIndexPath: indexPath) as!RMBooksTableViewCell
		
		row.titleLabel.text = "Film"
		row.authorLabel.text = "Author"
		row.ratingsLabel.text = "Rating: 4.5/5"
		
		return row
	}
}
