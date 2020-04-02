//
//  PostController.swift
//  Continuum
//
//  Created by Garrett Lyons on 4/1/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import Foundation

class PostController {
    
    static let sharedInstance = PostController()
    var posts: [Post] = []
    
    func addComment(text: String, post: Post, completion: @escaping(Result<Comment, PostError>) -> Void) {
        
    }
}
