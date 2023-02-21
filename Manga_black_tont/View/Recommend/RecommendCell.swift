//
//  RecommendCell.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 21/02/2023.
//

import UIKit

class RecommendCell: UICollectionViewCell {

    @IBOutlet weak var type2: UILabel!
    @IBOutlet weak var type1: UILabel!
    @IBOutlet weak var Rcimage: UIImageView!
    @IBOutlet weak var chapte: UILabel!
    @IBOutlet weak var rcAuth: UILabel!
    @IBOutlet weak var rcTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup (_  recommendItem : Recommends ){
        Rcimage.image = recommendItem.image
        rcTitle.text = recommendItem.title
        rcAuth.text = recommendItem.author
        chapte.text = recommendItem.chapter
        type1.text = recommendItem.type1
        type2.text = recommendItem.type2
    }

}
