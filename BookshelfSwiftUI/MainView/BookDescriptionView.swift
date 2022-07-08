//
//  BookDescriptionView.swift
//  BookshelfSwiftUI
//
//  Created by Lily Tran on 7/7/22.
//

import SwiftUI


struct BookDescriptionView: View {
    var book: Book
    var body: some View {
        HStack {
            Image(book.coverArt)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 150)

            VStack {
                Text(book.title)
                    .bold()
                    .lineLimit(2)
                Text(book.author)                .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack {
                    ProgressBar()
                    
                    Text("50%")                .font(.caption2)
                        .foregroundColor(.secondary)
                }
                HStack {
                    Image(systemName: "suit.heart")
                    
                    Text("175")
                    
                    Image(systemName: "message")
                    
                    Text("100")
                        
                }
                .font(.caption2)
                .font(.system(size: 2, design: .default))
                .foregroundColor(.secondary)
        
            }
            
        }
    }
}

struct BookDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        // have to declare book variable in BookDescriptionView struct to define a book
        BookDescriptionView(
            book: Book(
                title: "Outliers",
                author: "Malcolm Gladwell",
                coverArt: "Outliers",
                releaseYear: "2015",
                description: "How parametrics differences can impact outcome")
            
        )
        .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
        .previewDisplayName("iPhone 12")
    }
}

///ZStack View that represents the users reading progress
struct ProgressBar: View {

  var body: some View {
    ZStack(alignment: .leading) {
      Capsule().frame(width: 100, height: 5)
        .opacity(0.3)
        .foregroundColor(.gray)
      Capsule().frame(width: 50, height: 5)
        .foregroundColor(.orange)
    }
  }
}
