//
//  ContentView.swift
//  M4L15
//
//  Created by Ben Moodie on 2022-08-12.
//

import SwiftUI

struct LibraryView: View {
    
    var model = BookModel()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView{
                VStack(spacing: 20) {
                    ForEach(model.books) { b in
                        NavigationLink(
                            destination: BookSummaryView(book: b) ,
                            //destination: BookSummaryView(book:b),
                            label: {
                                VStack(alignment: .leading, spacing: 8){
                                    Text(b.title)
                                        .font(.title)
                                        .bold()
                                        .foregroundColor(.black)
                                    Text(b.author)
                                        .font(.caption)
                                        .foregroundColor(.black)
                                    Image("cover\(b.id)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                .padding()
                                .background(.white)
                                .cornerRadius(8)
                                .shadow(color: Color(.init(srgbRed: 0, green: 0, blue: 0, alpha: 0.5)), radius: 4, x:-4, y:4)
                                
                            }
                        )
                    }
                    .padding(.horizontal)
                    
                }
            }
            .navigationTitle("My Library")
            .padding(.top, 20.0)
        }
        .environmentObject(BookModel())
        
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
