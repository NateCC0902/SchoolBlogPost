//
//  MainView.swift
//  SaraApp
//
//  Created by Cc C on 2022/6/29.
//

import SwiftUI

struct MainView: View {
    @State var selection = 1
    
    let schools: [SchoolModel]
    let articles: [ArticleModel]
    
    
    var body: some View {
        
        TabView() {
            
            SchoolsView(schools: schools)
            .tabItem {
                    Label("Schools", systemImage: "book.closed.fill")
                }
            
            ArticlesView(articles: articles)
                .tabItem {
                    Label("Articles", systemImage: "newspaper.fill")
                }
                
        }
        

    }
}

struct MainView_Previews: PreviewProvider {


    static var previews: some View {
        MainView(schools: SchoolModel.sampleData, articles: ArticleModel.sampleDataArticles)
            
    }
}
