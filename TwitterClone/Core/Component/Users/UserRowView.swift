//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 48, height: 48)
            VStack(alignment: .leading){
                Text("Uday Khatri")
                    .foregroundColor(.black)
                    .bold()
                Text("@Udkhatri")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            Spacer()
        }.padding(.horizontal)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
