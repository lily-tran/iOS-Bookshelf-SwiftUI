//
//  Book.swift
//  BookshelfSwiftUI
//
//  Created by Lily Tran on 7/7/22.
//

import Foundation

class Book: Identifiable {
    let id: String
    let title: String
    let author: String
    let coverArt: String
    let releaseYear: String
    let description: String
    
    init(id: String = UUID().uuidString, title: String, author: String, coverArt: String, releaseYear: String, description: String) {
        self.id = id
        self.title = title
        self.author = author
        self.coverArt = coverArt
        self.releaseYear = releaseYear
        self.description = description
    }
}

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.id == rhs.id
    }
}
