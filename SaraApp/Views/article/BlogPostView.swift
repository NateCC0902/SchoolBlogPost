//
//  BlogPostView.swift
//  SaraApp
//
//  Created by Cc C on 2022/7/10.
//

import SwiftUI
import SDWebImageSwiftUI


struct BlogPostView: View {
    
    let article: ArticleModel

    
    var body: some View {
        ZStack {
                 ScrollView {
                     VStack {
//                         WebImage(url: blogPost.image)
//                             .renderingMode(.original)
//                             .resizable()
//                             .aspectRatio(contentMode: .fill)
//                             .frame(height: 310)
//                             .frame(maxWidth: UIScreen.main.bounds.width)
//                             .clipped()
                         
                         VStack {
                             HStack {
                                 Text(article.title)
                                     .font(.title3)
                                     .fontWeight(.heavy)
                                     .foregroundColor(.primary)
                                     .lineLimit(3)
                                     .padding(.vertical, 15)
                                 Spacer()
                             }
                             .frame(maxWidth: .infinity)
                             
                             Text(article.blogPost)
                                 .multilineTextAlignment(.leading)
                                 .font(.body)
                                 .foregroundColor(Color.primary.opacity(0.9))
                                 .padding(.bottom, 25)
                                 .frame(maxWidth: .infinity)
                         }
                         .padding(.horizontal, 20)

                         Spacer()
                     }
                     .frame(maxWidth: .infinity)
                     
                 }
                 .navigationBarTitleDisplayMode(.inline)
             }
        
    }
}

struct BlogPostView_Previews: PreviewProvider {


    static var previews: some View {
        
        BlogPostView(article: ArticleModel.sampleDataArticles[0])
        
    }
}
