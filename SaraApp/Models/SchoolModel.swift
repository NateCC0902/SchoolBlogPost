//
//  School.swift
//  SaraApp
//
//  Created by Cc C on 2022/6/29.
//

import Foundation

struct SchoolModel: Identifiable{
    let id: UUID
    var cityTitle: String
    var address: String
    var imageAdress: String
    var instructor: String
    
    init(id: UUID = UUID(), cityTitle: String, address: String, imageAdress: String, instructor: String ) {
        self.id = id
        self.cityTitle = cityTitle
        self.address = address
        self.imageAdress = imageAdress
        self.instructor = instructor
    
    }
}

extension SchoolModel{
    static let sampleData: [SchoolModel] =
    [
        SchoolModel(cityTitle: "高雄", address: "12313路巷口", imageAdress: "kao", instructor: "Nate"),
        SchoolModel(cityTitle: "台南", address: "12313路巷口", imageAdress: "tainan", instructor: "Sara")

    
    ]
}
