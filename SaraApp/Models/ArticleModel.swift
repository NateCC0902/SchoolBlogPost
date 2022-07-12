//
//  ArticleModel.swift
//  SaraApp
//
//  Created by Cc C on 2022/7/11.
//

import Foundation

struct ArticleModel: Identifiable {
    let id: UUID
    
    var title: String
    var author: String
    var createDate: String
    var image: URL?
    var blogPost: String
    
    init(id: UUID = UUID(), title: String, author: String, createDate: String, image: URL?, blogPost: String) {
        self.id = id
        self.title = title
        self.author = author
        self.createDate = createDate
        self.image = image
        self.blogPost = blogPost
    
    }
}


extension ArticleModel{
    static let sampleDataArticles: [ArticleModel] =
    [
        ArticleModel(title: "its a test 1", author: "Nate", createDate: "2022/01/29", image: URL(string: "www.google.com"), blogPost: "asipdj asoijdoijfaewoij foijefjio \n woidfjaoidjjaiowldj ioiji"),
        ArticleModel(title: "its a test 2", author: "Nate", createDate: "2022/06/29", image: URL(string: "www.google.com"), blogPost: "你好 asoijdoijfaewoij foijefjio woidfjaoidjjaiowldj ioiji")

    ]
}
