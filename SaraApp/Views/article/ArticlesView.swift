//
//  ArticlesView.swift
//  SaraApp
//
//  Created by Cc C on 2022/6/30.
//

import SwiftUI

struct ArticlesView: View {
    
    let articles: [ArticleModel]

    

    var body: some View {
        List{
            ForEach(articles){ article in
                ZStack {
                    ArticleCardView(article: article)
                    
                    NavigationLink(destination: BlogPostView(article: article)){
                        EmptyView()
                    }.opacity(0)
                }
            }
            .listRowBackground(Color(UIColor.systemGroupedBackground))
            
        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .edgesIgnoringSafeArea(.all)
        
        

    }
        
}

struct ArticlesView_Previews: PreviewProvider {


    static var previews: some View {
        ArticlesView(articles: ArticleModel.sampleDataArticles)
    }
}
