//
//  DataService.swift
//  M4L15 Challenge
//
//  Created by Ben Moodie on 2022-08-08.
//

import Foundation

class DataService {
    
    // make this a 'type method'
    static func getLocalData() -> [Book] {
        
        // parse local JSON file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "BookData", ofType: "json")
        //Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            //send an empty recipe list
            return [Book]()
        }
        
        // create url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // create data object
            let data = try Data(contentsOf: url)
            
            // decode data with JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let bookData = try decoder.decode([Book].self, from: data)
                
                // return the recipes
                return bookData
            }
            catch {
                // error with parsing JSON
                print(error)
            }
            
            
        }
        catch {
            //error with getting data
            print(error)
        }
        
        return [Book]()
        
    }
    
}
