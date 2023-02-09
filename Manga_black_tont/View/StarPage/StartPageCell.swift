//
//  StartPageCell.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 09/02/2023.
//

import UIKit

class StartPageCell: UICollectionViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var StartTilte: UILabel!
    
    @IBOutlet weak var StartContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setup(_ slide : StartPageSlide){
        ImageView.image = slide.image
        StartTilte.text = slide.title
        StartContent.text = slide.description

    }

}
