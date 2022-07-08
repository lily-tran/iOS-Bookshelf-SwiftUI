//
//  BookListView.swift
//  BookshelfSwiftUI
//
//  Created by Lily Tran on 7/7/22.
//

import SwiftUI

struct BookListView: View {
    @StateObject private var bookViewModel = BookViewModel()
    var body: some View {
        // segue for to navigate to detail view by clicking on a cell, so everthing but state object is encapsulated
        NavigationView {
            

            List {
                ForEach($bookViewModel.books) {book in
                    
                    
                    
                    NavigationLink(destination: BookDetailView(book: book)
                    ) {
                        BookDescriptionView(book: book.wrappedValue)
                    }
                }
            } // end of List
            .navigationTitle("Bookshelf")
            
        } // end of NavigationView
        
        
        //Text(bookViewModel.books.first)
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
        .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
        .previewDisplayName("iPhone 12")
    }
}
