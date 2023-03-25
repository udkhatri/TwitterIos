//
//  ExploreView.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import SwiftUI

struct ExploreView: View {
    @State var Search = ""
    var body: some View {
        NavigationView {
            VStack{
                List{
                    ForEach(0 ... 30, id: \.self){ _ in
                        NavigationLink {
                            ProfileView()
                            
                        } label: {
                            VStack{
                                UserRowView()
                            }
                        }
                    }
                }.listStyle(.plain)
                
            }
            .navigationTitle("Explore")
            .searchable(text: $Search)
        }
   
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
