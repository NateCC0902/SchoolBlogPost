//
//  CardView.swift
//  SaraApp
//
//  Created by Cc C on 2022/6/29.
//

import SwiftUI

struct ArticleCardView: View {
    let article: ArticleModel

    
    var body: some View {
        VStack {
                  Image("swiftui-button")
                      .resizable()
                      .aspectRatio(contentMode: .fit)

                  HStack {
                      VStack(alignment: .leading) {
                          Text(article.createDate)
                              .font(.headline)
                              .foregroundColor(.secondary)
                          Text(article.title)
                              .font(.title)
                              .fontWeight(.black)
                              .foregroundColor(.primary)
                              .lineLimit(3)
                          Text("Written by \(article.author)".uppercased())
                              .font(.caption)
                              .foregroundColor(.secondary)
                      }
                      .layoutPriority(100)

                      Spacer()
                  }
                    .padding()

                
              }
            
              //.background(.white)
              .background(Color(UIColor.systemBackground))
              .cornerRadius(10)
              .overlay(
                  RoundedRectangle(cornerRadius: 10)
                      .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
              )
              .padding([.bottom, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {


    static var previews: some View {
        ArticleCardView(article: ArticleModel.sampleDataArticles[0]).background(.yellow)
        //.previewLayout(.fixed(width: 400, height: 200))


    }
}
