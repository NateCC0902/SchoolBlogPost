//
//  SaraAppApp.swift
//  SaraApp
//
//  Created by Cc C on 2022/6/29.
//

import SwiftUI

@main
struct SaraAppApp: App {

    var body: some Scene {
        WindowGroup {
            NavigationView{
                MainView(schools: SchoolModel.sampleData, articles:  ArticleModel.sampleDataArticles)
            }
        }
    }
}
