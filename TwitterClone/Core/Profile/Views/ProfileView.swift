//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    @Environment(\.presentationMode) var mode
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                headerView
                // Notification and Edit profile action buttons
                actionButtons
                
                // Other profile details
                profileInfo
                
                // Tweets, Replies and Likes bar
                tweetFilterBar
                
                // Tweets
                tweetsView
                Spacer()
            }.navigationBarHidden(true)
        }
       
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack {
                Button{
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                }
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x:16, y: 38)
            }
        }
        .frame(height: 98)
    }
    
    var actionButtons: some View {
        HStack {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(.gray))
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(Color(UIColor.black))
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(.gray))
            }
        }
        .padding(.horizontal)
    }
    
    var profileInfo: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Uday Khatri")
                    .font(.title2)
                    .bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
            }
            Text("@udkhatri")
                .foregroundColor(.gray)
                .font(.subheadline)
            
            Text("Bio text, Bio text, Bio text")
                .padding(.vertical, 5)
            HStack {
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                        .font(.subheadline)
                    Text("London, ON")
                        .font(.subheadline)
                }
                HStack{
                    Image(systemName: "link")
                        .font(.subheadline)
                    Text("www.udaykhatri.com")
                        .font(.subheadline)
                }
            }
            .foregroundColor(.gray)
            .font(.caption)
            HStack(spacing: 10) {
                HStack{
                    Text("256")
                        .font(.subheadline)
                        .bold()
                    Text("Followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                HStack{
                    Text("656")
                        .font(.subheadline)
                        .bold()
                    Text("Following")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding(.vertical, 5)
        }.padding(.horizontal)
        
        
    }
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) {
                item in VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }
                    else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut){
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x:0, y:16))
    }
    
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    TweetRowView()
                }
            }
        }
    }
}
