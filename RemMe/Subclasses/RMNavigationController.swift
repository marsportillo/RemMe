//
//  RMNavigationController.swift
//  RemMe
//
//  Created by marco sportillo on 22/08/16.
//  Copyright © 2016 msportillo.me. All rights reserved.
//

import UIKit

class RMNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		self.navigationBar.barTintColor = richBlack
		self.navigationBar.translucent = false
        self.navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont(name: "Roboto-Bold", size: 18)!, NSForegroundColorAttributeName: bondiBlue] //font title navbar
		
		self.navigationBar.setBackgroundImage(UIImage(), forBarPosition: UIBarPosition.Any, barMetrics: UIBarMetrics.Default)
		self.navigationBar.shadowImage = UIImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	func setBackButton(){
		self.navigationItem.backBarButtonItem?.title=""
	}

}
