//
//  MainTabView.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView().onTapGesture {
                self.selectedIndex = 0
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }.tag(0)
            ExploreView().onTapGesture {
                self.selectedIndex = 1
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Explore")
            }.tag(1)
            NotificationsView().onTapGesture {
                self.selectedIndex = 2
            }
            .tabItem {
                Image(systemName: "bell")
                Text("Notification")
            }.tag(2)
            MessagesView().onTapGesture {
                self.selectedIndex = 3
            }
            .tabItem {
                Image(systemName: "message")
                Text("Message")
            }.tag(3)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
