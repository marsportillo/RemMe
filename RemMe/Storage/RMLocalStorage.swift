//
//  RMLocalStorage.swift
//  RemMe
//
//  Created by marco sportillo on 27/08/16.
//  Copyright © 2016 IQUII. All rights reserved.
//

import Foundation
import RealmSwift

class RMLocalStorage: NSObject {
	
	//MARK: Configuration
	var manager : Realm //manager Alamofire
	
	//singleton
	static let sharedInstance = RMLocalStorage()
	
	override init() {
		self.manager = try! Realm()
	}
	
	//MARK: Song methods
	internal func saveSong(title: String, artist: String) {
		let newSong = RMSong()
		newSong.title = title
		newSong.artist = artist
		
		try! manager.write({
			manager.add(newSong)
		})
	}
	
	internal func getSongs() -> Results<RMSong>{
		let songs =  manager.objects(RMSong.self)
		return songs
	}
	
	internal func deleteSong(songToDelete: RMSong) {
		try! manager.write {
			manager.delete(songToDelete)
		}
	}
	
	
	//MARK: Book methods
	internal func saveBook(title: String, author: String) {
		let newBook = RMBook()
		newBook.title = title
		newBook.author = author
		
		try! manager.write({
			manager.add(newBook)
		})
	}
	
	internal func getBooks() -> Results<RMBook>{
		let books =  manager.objects(RMBook.self)
		return books
	}
	
	internal func deleteBook(bookToDelete: RMBook) {
		try! manager.write {
			manager.delete(bookToDelete)
		}
	}

	//MARK: Film methods
	internal func saveFilm(title: String, picture: NSData, ratings: Double) {
		let newFilm = RMFilm()
		newFilm.title = title
		newFilm.picture = picture
		newFilm.ratings = ratings
		
		try! manager.write({
			manager.add(newFilm)
		})
	}
	
	internal func getFilms() -> Results<RMFilm>{
		let films =  manager.objects(RMFilm.self)
		return films
	}
	
	internal func deleteFilm(filmToDelete: RMFilm) {
		try! manager.write {
			manager.delete(filmToDelete)
		}
	}

	//MARK: TVSerie methods
	internal func saveTVSerie(title: String, picture: NSData, ratings: Double) {
		let newTVSerie = RMTVSerie()
		newTVSerie.title = title
		newTVSerie.picture = picture
		newTVSerie.ratings = ratings
		
		try! manager.write({
			manager.add(newTVSerie)
		})
	}
	
	internal func getTVSeries() -> Results<RMTVSerie>{
		let tvSeries =  manager.objects(RMTVSerie.self)
		return tvSeries
	}
	
	internal func deleteTVSerie(tvSerieToDelete: RMTVSerie) {
		try! manager.write {
			manager.delete(tvSerieToDelete)
		}
	}
}