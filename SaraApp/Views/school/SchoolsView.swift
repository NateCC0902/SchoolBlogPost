//
//  SchoolsView.swift
//  SaraApp
//
//  Created by Cc C on 2022/7/11.
//

import SwiftUI

struct SchoolsView: View {
    let schools: [SchoolModel]

    var body: some View {
        List{
            ForEach(schools){ school in
                ZStack {
                    SchoolsCardView(school: school)
                    
                    NavigationLink(destination: Text("its")){
                        EmptyView()
                    }.opacity(0)
                }
            }
            .listRowBackground(Color(UIColor.systemGroupedBackground))

        }
        
    }
}

struct SchoolsView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolsView(schools: SchoolModel.sampleData)
    }
}
