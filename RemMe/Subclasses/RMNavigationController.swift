//
//  RMNavigationController.swift
//  RemMe
//
//  Created by marco sportillo on 22/08/16.
//  Copyright © 2016 IQUII. All rights reserved.
//

import UIKit

class RMNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

		self.navigationBar.barTintColor = UIColor.blackColor()
		self.navigationBar.translucent = false
		self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
		// Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func customizeNavBar() {
		self.navigationBar.barTintColor = UIColor.blackColor()
		self.navigationBar.translucent = false
		self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
