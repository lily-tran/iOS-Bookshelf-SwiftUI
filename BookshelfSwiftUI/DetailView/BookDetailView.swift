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
        Text(book.author)
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
