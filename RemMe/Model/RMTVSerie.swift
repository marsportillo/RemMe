//
//  RMTVSerie.swift
//  RemMe
//
//  Created by marco sportillo on 23/08/16.
//  Copyright © 2016 msportillo.me. All rights reserved.
//

import RealmSwift

class RMTVSerie: Object {
	dynamic var title = ""
	dynamic var picture: NSData? = nil
	dynamic var ratings: Double = 0.0
}
