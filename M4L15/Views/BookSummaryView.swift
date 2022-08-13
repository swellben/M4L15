//
//  BookSummaryView.swift
//  M4L15
//
//  Created by Ben Moodie on 2022-08-12.
//

import SwiftUI

struct BookSummaryView: View {
    
    @EnvironmentObject var model:BookModel
    @State var rating = 2
    var book:Book
    
    var body: some View {
        
        VStack {
            NavigationLink (destination: ReadBook()){
                VStack {
                    Text("Read now!")
                        .font(.title)
                        .foregroundColor(Color.black)
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                }
            }
            Spacer()
            Text("Mark for later!")
                .bold()
            Button(
                action: {
                    //model.updateFavorite()
                },
                label: {
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                        .font(.system(size: 32))
                        .padding()
                })
            Spacer()
            Text("Rate \(book.title)")
                .bold()
            Picker("Rate book", selection: $rating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal,30)
            .onChange(of: rating, perform: { value in
                //when picker chsanges, change the rating
                book.rating = rating
            })
            .onAppear { rating = book.rating }

        }
        .navigationBarTitle(book.title)
        .padding(.horizontal)
        
    }
}

struct BookSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        BookSummaryView(book: Book())
            .environmentObject(BookModel())
    }
}
