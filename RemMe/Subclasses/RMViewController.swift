//
//  RMViewController.swift
//  RemMe
//
//  Created by marco sportillo on 22/08/16.
//  Copyright © 2016 msportillo.me. All rights reserved.
//

import UIKit

class RMViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	func setBackButtonItemInNavBar(){
		let backButton = RMButton(type: .Custom)
		backButton.setTitle("", forState: .Normal)
		backButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
		backButton.frame = CGRectMake(0, 0, 25, 15)
		backButton.setImage(UIImage(named: "backButton"), forState: .Normal)
		backButton.addTarget(self, action: #selector(self.back), forControlEvents: .TouchUpInside)
		
		let backBarButtonItem = UIBarButtonItem(customView: backButton)
		self.navigationItem.leftBarButtonItems = [backBarButtonItem]
	}

	func back(){
		self.navigationController?.popViewControllerAnimated(true)
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
