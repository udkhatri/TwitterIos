//
//  FeedView.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(0 ... 20, id: \.self) {
                    _ in
                    TweetRowView()
                    Divider()
                }
            }
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
