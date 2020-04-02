//
//  Post.swift
//  Continuum
//
//  Created by Garrett Lyons on 4/1/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit
import CloudKit

class Post {
    
    var photoData: Data?
    var timestamp: Date
    var caption: String
    var comments: [Comment]
    let recordID: CKRecord.ID
    
    var photo: UIImage? {
        get {
            guard let photoData = photoData else {return nil}
            return UIImage(data: photoData)
        }
        set {
            photoData = newValue?.jpegData(compressionQuality: 0.5)
        }
    }
    
    init(photo: UIImage?, caption: String, timestamp: Date = Date(), comments: [Comment] = [], recordID: CKRecord.ID = CKRecord.ID(recordName: UUID().uuidString)) {
        
        self.caption = caption
        self.timestamp = timestamp
        self.comments = comments
        self.recordID = recordID
        
        self.photo = photo ///Needs to be last since it is a computed property
    }
    
    
}//End of Class


