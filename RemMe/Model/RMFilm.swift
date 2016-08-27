//
//  RMFilm.swift
//  RemMe
//
//  Created by marco sportillo on 23/08/16.
//  Copyright © 2016 IQUII. All rights reserved.
//

import RealmSwift

class RMFilm: Object {
	dynamic var title = ""
	dynamic var picture: NSData? = nil
	dynamic var ratings: Double = 0.0
}
