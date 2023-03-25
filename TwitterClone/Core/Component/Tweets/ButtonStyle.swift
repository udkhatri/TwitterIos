//
//  ButtonStyle.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import Foundation
import SwiftUI
// Define a View Modifier for a common button style
struct ButtonStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
//            .frame(width: 40 ,height: 40)
            .background(.white)
            .foregroundColor(.gray)
//            .cornerRadius(20)
//            .shadow( color: Color(UIColor.lightGray),radius: 3)
    }
}
struct TweetCard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.white)
            .shadow( color: .gray,radius: 3)
            .frame(maxWidth: .infinity ,alignment: .leading)
            .cornerRadius(10)
            .shadow( color: .gray,radius: 3,x: 0, y: 5)
            .padding(20)
           
    }
}
