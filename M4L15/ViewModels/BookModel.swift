//
//  BookModel.swift
//  M4L15
//
//  Created by Ben Moodie on 2022-08-12.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        
        // create an instance of dataservice and get the data
        self.books = DataService.getLocalData()
        
        // set the books property
        
    }
}
