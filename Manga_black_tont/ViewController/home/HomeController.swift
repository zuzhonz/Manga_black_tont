//
//  HomeController.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 17/02/2023.
//

import UIKit
import UPCarouselFlowLayout

class HomeController: UIViewController {
    
    @IBOutlet weak var homeColletion: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        homeColletion.register(UINib(nibName: FeatureCollection.className, bundle: nil),forCellWithReuseIdentifier: FeatureCollection.className )
        homeColletion.register(UINib(nibName: RecommendColletion.className, bundle: nil),forCellWithReuseIdentifier: RecommendColletion.className )
        homeColletion.register(UINib(nibName: AuthorColletion.className, bundle: nil),forCellWithReuseIdentifier: AuthorColletion.className )
        homeColletion.backgroundColor = .clear
    }
    

   
    

}

extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        if section == 1 {
            return 1
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0{
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeatureCollection.className, for: indexPath) as! FeatureCollection
                return cell
            }
        
        if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendColletion.className, for: indexPath) as! RecommendColletion
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AuthorColletion.className, for: indexPath) as! AuthorColletion
            return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1{
            return  CGSize(width: 420 * scale  , height: 170 )
        }
        return  CGSize(width: 420 * scale , height: 270 )
        
    }
        
}

