//
//  Book.swift
//  M4L15
//
//  Created by Ben Moodie on 2022-08-12.
//

import Foundation

class Book: Identifiable, Decodable {
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
    
}
