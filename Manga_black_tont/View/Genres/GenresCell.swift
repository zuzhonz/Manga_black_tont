//
//  GenresCell.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 16/02/2023.
//

import UIKit

class GenresCell: UICollectionViewCell {

    @IBOutlet weak var genresImg: UIImageView!
    @IBOutlet weak var genresTitle: UILabel!
    @IBOutlet weak var genresDesc: UITextView!
    @IBOutlet weak var genresRating: UIImageView!
    @IBOutlet weak var genresCheckbox: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        genresDesc.isEditable = false
    }
    
    func setup(_ genresItem : Genrens){
        genresImg.image = genresItem.image
        genresTitle.text = genresItem.title
        genresDesc.text = genresItem.description
        genresRating.image = genresItem.rating

    }

}
