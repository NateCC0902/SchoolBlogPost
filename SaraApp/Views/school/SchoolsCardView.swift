//
//  SchoolView.swift
//  SaraApp
//
//  Created by Cc C on 2022/6/30.
//

import SwiftUI

struct SchoolsCardView: View {
    let school: SchoolModel

    var body: some View {
        VStack{
            Image(school.imageAdress)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                .overlay(
                        Color.black
                            .opacity(0.4)
                            .overlay(
                                HStack{
                                    VStack(alignment: .leading){
                                    Text(school.cityTitle)
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)

                                        Spacer()
                                        HStack{
                                            Image(systemName: "person.fill").colorInvert()
                                            Text("講師: \(school.instructor)")
                                                .font(.subheadline)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                        }
                                      
                                            
                                            
                                    }
                                    Spacer()
                                    
                                    
                                }.padding()
                                
                            )
                            
                )
                
            
        }
        .cornerRadius(30)
        //.padding()


    }
}

struct SchoolView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolsCardView(school: SchoolModel.sampleData[1])
    }
}
