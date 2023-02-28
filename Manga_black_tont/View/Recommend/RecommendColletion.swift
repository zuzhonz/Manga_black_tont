//
//  RecommendColletion.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 22/02/2023.
//

import UIKit

class RecommendColletion: UICollectionViewCell {

    @IBOutlet weak var RcColletion: UICollectionView!
    
    var recommend : [Recommends] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        RcColletion.backgroundColor = .clear
        RcColletion.register(UINib(nibName: RecommendCell.className, bundle: nil),forCellWithReuseIdentifier: RecommendCell.className)
        
        RcColletion.showsHorizontalScrollIndicator = false
        RcColletion.showsVerticalScrollIndicator = false
        
        recommend = [
          Recommends(image: #imageLiteral(resourceName: "image 9"), title: "One piece", chapter: "957 chapters", author: "Eiichiro ODA" ),
          Recommends(image: #imageLiteral(resourceName: "image 11"), title: "One piece", chapter: "957 chapters", author: "Eiichiro ODA" ),
          Recommends(image: #imageLiteral(resourceName: "image 9"), title: "One piece", chapter: "957 chapters", author: "Eiichiro ODA" ),
          Recommends(image: #imageLiteral(resourceName: "Rectangle 5"), title: "One piece", chapter: "957 chapters", author: "Eiichiro ODA" ),
          Recommends(image: #imageLiteral(resourceName: "image 9"), title: "One piece", chapter: "957 chapters", author: "Eiichiro ODA" ),

        ]
    }

}


extension RecommendColletion: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recommend.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendCell.className, for: indexPath) as! RecommendCell
        cell.setup(recommend[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 279 * scale , height: 120 * scale)
    }
}
