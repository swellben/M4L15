//
//  BookSummaryView.swift
//  M4L15
//
//  Created by Ben Moodie on 2022-08-12.
//

import SwiftUI

struct BookSummaryView: View {
    
    @EnvironmentObject var model:BookModel
    @State var rating = 0
    var book:Book
    
    var body: some View {
        
        VStack {
            Text(book.title)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Text("Read now")
                .font(.title)
            Image("cover\(book.id)")
                .resizable()
                .scaledToFit()
            Text("Mark for later!")
            Button(
                action: {
                    //model.updateFavorite()
                },
                label: {
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                })
            Text("Rate \(book.title)")
            Picker("Tap Me", selection: $rating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            .pickerStyle(SegmentedPickerStyle())
//            .onChange(of: rating, perform: { value in
//                //book.rating = rating
//            })
            
            
        }
        
        
    }
}

struct BookSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        BookSummaryView(book: Book())
            .environmentObject(BookModel())
    }
}
