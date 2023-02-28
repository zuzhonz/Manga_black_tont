//
//  AuthorColletion.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 23/02/2023.
//

import UIKit
import UPCarouselFlowLayout
class AuthorColletion: UICollectionViewCell {

    @IBOutlet weak var authorLable: UILabel!
    @IBOutlet weak var AtColletion: UICollectionView!
    var author : [Authors] = []
    override func awakeFromNib() {
        
        super.awakeFromNib()
        AtColletion.backgroundColor = .clear
        AtColletion.register(UINib(nibName: AuthorCell.className, bundle: nil),forCellWithReuseIdentifier: AuthorCell.className)
        
        AtColletion.showsHorizontalScrollIndicator = false
        AtColletion.showsVerticalScrollIndicator = false
       
        
        let layout = UPCarouselFlowLayout()
        
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 170 * scale , height: 300 * scale)
        layout.spacingMode =  .fixed(spacing: 10.0)
        layout.sideItemScale = 0.8
        layout.sideItemAlpha = 1.0
        
        AtColletion.collectionViewLayout = layout
        
        author = [
         Authors(Name: "Yusuke Murata", avatar: #imageLiteral(resourceName: "image 9"), rating: #imageLiteral(resourceName: "Group 70.png")),
         Authors(Name: "Yusuke Murata", avatar: #imageLiteral(resourceName: "image 10"), rating: #imageLiteral(resourceName: "Group 70.png")),
         Authors(Name: "Yusuke Murata", avatar: #imageLiteral(resourceName: "image 10"), rating: #imageLiteral(resourceName: "Group 70.png")),
         Authors(Name: "Yusuke Murata", avatar: #imageLiteral(resourceName: "image Athor1"), rating: #imageLiteral(resourceName: "Group 70.png")),
         Authors(Name: "Yusuke Murata", avatar: #imageLiteral(resourceName: "image athor2"), rating: #imageLiteral(resourceName: "Group 70.png")),
         Authors(Name: "Yusuke Murata", avatar: #imageLiteral(resourceName: "image Athor1"), rating: #imageLiteral(resourceName: "Group 70.png")),


        ]
        let c = IndexPath(item: 2, section: 0)
        AtColletion.scrollToItem(at: c , at: .centeredHorizontally, animated: true)

    }
   
}
extension AuthorColletion: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return author.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AuthorCell.className, for: indexPath) as! AuthorCell
        cell.setup(author[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170 * scale , height: 300 * scale)
    }
}
