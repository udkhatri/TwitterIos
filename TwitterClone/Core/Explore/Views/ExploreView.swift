//
//  ExploreView.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            VStack{
                ScrollView {
                    LazyVStack{
                        ForEach(0 ... 30, id: \.self){ _ in
                            NavigationLink {
                                ProfileView()
                                
                            } label: {
                                VStack{
                                    UserRowView()
                                    Divider()
                                }
                               
                            }
                            
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            
        }
   
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
