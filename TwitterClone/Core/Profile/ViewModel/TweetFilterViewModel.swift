//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Uday Khatri on 2023-03-19.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String{
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
