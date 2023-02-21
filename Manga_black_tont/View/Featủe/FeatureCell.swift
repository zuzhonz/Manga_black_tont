//
//  FeatureCell.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 21/02/2023.
//

import UIKit

class FeatureCell: UICollectionViewCell {

    @IBOutlet weak var MangaTitle: UILabel!
    @IBOutlet weak var authTitle: UILabel!
    @IBOutlet weak var imageManga: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setup(_ FeaturItem : Features ){
        MangaTitle.text = FeaturItem.title
        imageManga.image = FeaturItem.image
        authTitle.text = FeaturItem.auth
    }

}
