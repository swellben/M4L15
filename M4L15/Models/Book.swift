//
//  Book.swift
//  M4L15
//
//  Created by Ben Moodie on 2022-08-12.
//

import Foundation

class Book: Identifiable, Decodable {
    
    var id = 1
    var title = "Title"
    var author = "Author"
    var content = ["I am a test book."]
    var isFavourite = false
    var rating = 2
    var currentPage = 0
    
}
