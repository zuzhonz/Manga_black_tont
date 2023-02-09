//
//  WelcomeController.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 09/02/2023.
//

import UIKit

class WelcomeController: UIViewController {
    
    @IBOutlet weak var StartPageCollection: UICollectionView!
    @IBOutlet weak var StartPageControl: UIPageControl!
    @IBOutlet weak var NextBtn: UIButton!
    
    var slides : [StartPageSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StartPageCollection.backgroundColor = .clear
        StartPageCollection.register(UINib(nibName: "StartPageCell", bundle: nil),forCellWithReuseIdentifier: "StartPageCell")
        
        slides = [
            StartPageSlide(title: "Read your manga", description: "As a books lovers, you can also own your favorite books by ordering it on our app too We ensure that, we have almost all the versions of book such as a writer's sign, a limited edition,...." , image: #imageLiteral(resourceName: "72b386224056bf940cd5b01341f65e9d 1")),
            StartPageSlide(title: "Read your manga", description: "As a books lovers, you can also own your favorite books by ordering it on our app too We ensure that, we have almost all the versions of book such as a writer's sign, a limited edition,....", image: #imageLiteral(resourceName: "72b386224056bf940cd5b01341f65e9d 1")),
            StartPageSlide(title: "Read your manga", description: "As a books lovers, you can also own your favorite books by ordering it on our app too We ensure that, we have almost all the versions of book such as a writer's sign, a limited edition,...." , image: #imageLiteral(resourceName: "72b386224056bf940cd5b01341f65e9d 1") )
        ]
        
    }
    
    
    @IBAction func NextBtnClick(_ sender: UIButton) {
    }
    
    
}
extension WelcomeController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StartPageCell", for: indexPath) as! StartPageCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        let width = scrollView.frame.width
//        currentPage = Int(scrollView.contentOffset.x / width)
//    }
}
