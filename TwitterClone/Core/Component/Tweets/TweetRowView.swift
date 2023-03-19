//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // Profile image + user info + tweets
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color.blue)
                // User info and tweets
                VStack(alignment: .leading, spacing: 4){
                    // user info
                    HStack{
                        Text("Uday khatri")
                            .font(.subheadline.bold())
                        Text("@udkhatri")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    // Tweet caption

                    Text("Grinding myself to shape better future")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // action buttons
            HStack{
                Button {
                    // action
                } label: {
                    Image(systemName: "bubble.left")
                }
                .modifier(ButtonStyleModifier())
                Spacer()
                Button {
                    // action
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                }
                .modifier(ButtonStyleModifier())
                Spacer()
                Button {
                    // action
                } label: {
                    Image(systemName: "heart")
                }
                .modifier(ButtonStyleModifier())
                Spacer()
                Button {
                    // action
                } label: {
                    Image(systemName: "bookmark")
                }
                .modifier(ButtonStyleModifier())
            }.padding(.horizontal).padding(.top)
        }.padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
