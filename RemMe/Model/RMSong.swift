//
//  RMSong.swift
//  RemMe
//
//  Created by marco sportillo on 23/08/16.
//  Copyright © 2016 msportillo.me. All rights reserved.
//

import RealmSwift

class RMSong: Object {
	dynamic var title = ""
	dynamic var artist: String? = ""
}