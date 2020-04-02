//
//  PostTableViewCell.swift
//  Continuum
//
//  Created by Garrett Lyons on 4/1/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var postPhotoImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    
    // MARK: - Properties
    var post: Post?
    // MARK: - Methods
    func updateViews() {
        postPhotoImageView.image = post?.photo
        captionLabel.text = post?.caption
        commentCountLabel.text = "\(post?.commentCount ?? 0)"
    }

}
