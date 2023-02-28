//
//  FeatureCollection.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 22/02/2023.
//

import UIKit
import UPCarouselFlowLayout
class FeatureCollection: UICollectionViewCell {

    @IBOutlet weak var FeatureLayout: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    var feature : [Features] = []
    var currentPage  = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        FeatureLayout.backgroundColor = .clear
        FeatureLayout.register(UINib(nibName: "FeatureCell", bundle: nil),forCellWithReuseIdentifier: "FeatureCell")
        FeatureLayout.showsHorizontalScrollIndicator = false
        FeatureLayout.showsVerticalScrollIndicator = false
        
        let layout = UPCarouselFlowLayout()
        
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 150 * scale , height: 168 * scale)
        layout.spacingMode =  .fixed(spacing: 10.0)
        layout.sideItemScale = 0.8
        layout.sideItemAlpha = 1.0
        
        FeatureLayout.collectionViewLayout = layout
        
        feature = [
            Features(image: #imageLiteral(resourceName: "image 9"), title: "One piece", auth: "Eiichiro ODA"),
            Features(image: #imageLiteral(resourceName: "image 11"), title: "Naruto", auth: "Masashi Kishimoto"),
            Features(image: #imageLiteral(resourceName: "image 11"), title: "One punch man", auth: "Yusuke Murata"),
            Features(image: #imageLiteral(resourceName: "image 9"), title: "One piece", auth: "Eiichiro ODA"),
            Features(image: #imageLiteral(resourceName: "image 11"), title: "Naruto", auth: "Masashi Kishimoto"),
            Features(image: #imageLiteral(resourceName: "image 11"), title: "One punch man", auth: "Yusuke Murata"),
            Features(image: #imageLiteral(resourceName: "image 9"), title: "One piece", auth: "Eiichiro ODA"),
            Features(image: #imageLiteral(resourceName: "image 11"), title: "Naruto", auth: "Masashi Kishimoto"),
            Features(image: #imageLiteral(resourceName: "image 9"), title: "One punch man", auth: "Yusuke Murata"),
        ]
        pageControl.numberOfPages = feature.count
        
        
        let c = IndexPath(item: 2, section: 0)
        FeatureLayout.scrollToItem(at: c , at: .centeredHorizontally, animated: true)
    }
  
    

}
extension FeatureCollection: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return feature.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeatureCell", for: indexPath) as! FeatureCell
        cell.setup(feature[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150 * scale , height: 210 * scale)
    }
    
    

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        currentPage = Int(scrollView.contentOffset.x / 145)
        pageControl.currentPage = currentPage 
        
    }
}
