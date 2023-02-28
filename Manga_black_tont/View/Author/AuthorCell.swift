//
//  AuthorCell.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 22/02/2023.
//

import UIKit

class AuthorCell: UICollectionViewCell {

    @IBOutlet weak var authorImg: UIImageView!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var imgRating: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func setup(_  authorItem : Authors ){
        authorName.text = authorItem.Name
        authorImg.image = authorItem.avatar
        imgRating.image = authorItem.rating
        
    }
}
