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
    
    @IBOutlet weak var sign_in_link: UIStackView!
    var slides : [StartPageSlide] = []
    
    // current page slide
    var currentPage = 0 {
        didSet {
            StartPageControl.currentPage = currentPage
            if currentPage  == slides.count - 1 {
                NextBtn.setTitle("Sign Up", for: .normal)
                sign_in_link.isHidden = false

            }else{
                NextBtn.setTitle("Next", for: .normal)
                sign_in_link.isHidden = true

            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hiden sigh_in link
        sign_in_link.isHidden = true
        
        
        StartPageCollection.backgroundColor = .clear
        
        
        //connet SrartPage cell
        StartPageCollection.register(UINib(nibName: "StartPageCell", bundle: nil),forCellWithReuseIdentifier: "StartPageCell")
        
        // data sliede
        slides = [
            StartPageSlide(title: "Read your manga", description: "As a books lovers, you can also own your favorite books by ordering it on our app too We ensure that, we have almost all the versions of book such as a writer's sign, a limited edition,...." , image: #imageLiteral(resourceName: "72b386224056bf940cd5b01341f65e9d 1")),
            StartPageSlide(title: "Reading offline", description: "As a books lovers, you can also own your favorite books by ordering it on our app too We ensure that, we have almost all the versions of book such as a writer's sign, a limited edition,....", image: #imageLiteral(resourceName: "72b386224056bf940cd5b01341f65e9d 1")),
            StartPageSlide(title: "Share your emotion", description: "As a books lovers, you can also own your favorite books by ordering it on our app too We ensure that, we have almost all the versions of book such as a writer's sign, a limited edition,...." , image: #imageLiteral(resourceName: "72b386224056bf940cd5b01341f65e9d 1") )
        ]
        
    }
    
    
    //action btn click and page control
    @IBAction func NextBtnClick(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "Welcome2Controller") as? Welcome2Controller
            vc?.modalPresentationStyle  = .fullScreen
            self.present(vc!, animated: true,completion: nil)
            
        }else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            StartPageCollection.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
           
        }
        
        
    }
    
    
}

// delegate and datasource
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
        return CGSize(width: collectionView.frame.width , height: collectionView.frame.height)
    }
    
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
       

       
    }
}
