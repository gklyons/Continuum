//
//  PostController.swift
//  Continuum
//
//  Created by Garrett Lyons on 4/1/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit
import CloudKit

class PostController {
    
    static let sharedInstance = PostController()
    var posts: [Post] = []
    
    func addComment(text: String, post: Post, completion: @escaping(Result<Comment, PostError>) -> Void) {
        let comment = Comment(text: text, post: post)
        post.comments.append(comment)
    }
    
    func createPostWith(photo: UIImage, caption: String, completion: @escaping (Result<Post?, PostError>) -> Void) {
        let post = Post(photo: photo, caption: caption)
        self.posts.append(post)
    }
    
}//End of Class
