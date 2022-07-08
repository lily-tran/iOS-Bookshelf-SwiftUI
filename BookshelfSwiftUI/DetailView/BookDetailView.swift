//
//  BookDetailView.swift
//  BookshelfSwiftUI
//
//  Created by Lily Tran on 7/7/22.
//

import SwiftUI

struct BookDetailView: View {
    // landing pad
    @Binding var book: Book
    
    var body: some View {
        VStack(spacing: 10) {
            
            Image(book.coverArt)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 200)
                .padding()
            
            Text(book.title)
                .font(.system(.largeTitle))
                .lineLimit(3)
            
            Text(book.author)
                .foregroundColor(.secondary)
                .font(.footnote)
                .lineSpacing(10)
            
            HStack {
                VStack {
                    Text("Release")
                    Text(book.releaseYear)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                VStack {
                    Text("Pages")
                    Text("333")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                VStack {
                    Text("Language")
                    Text("Eng")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
            }
            .font(.system(size: 14, design: .monospaced))
            
            ScrollView {
                Text(book.description)
            }
            .frame(width: UIScreen.screenWidth - 50, height: UIScreen.screenHeight/3)
            
            
            
            
        }
        
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(
            book: .constant(
                Book(title: "Outliers", author: "Malcolm Gladwell", coverArt: "Outliers", releaseYear: "2012", description: "Deceptive statistics")
                )
        )
    }
}

// to get the screen size
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

