//
//  Welcome2Controller.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 16/02/2023.
//

import UIKit

class Welcome2Controller: UIViewController {

    @IBOutlet weak var SearchGenres: UITextField!
    @IBOutlet weak var ConfirmBtn: UIButton!
    @IBOutlet weak var UserLabel: UILabel!

    
    @IBOutlet weak var GenresColletion: UICollectionView!
    var genres : [Genrens] = []
    var genres_data : [Genrens] = []
    var fliters : [Genrens] = []
    
    
    @IBAction func skip_btn(_ sender: UIButton ){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeController") as? HomeController
        vc?.modalPresentationStyle  = .fullScreen
        self.present(vc!, animated: true,completion: nil)
    }
    
    @IBAction func confirmBtn(_ sender: Any) {
        genres.removeAll()
        
        if SearchGenres.text == ""{
            genres = genres_data
        }
        else{
            
                fliters = genres_data.filter { genre in
                    return genre.title.lowercased()  == SearchGenres?.text ?? ""
                }
            
                genres = fliters

        }
        
        
        GenresColletion.reloadData()
        
     
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        GenresColletion.backgroundColor = .clear
        GenresColletion.register(UINib(nibName: "GenresCell", bundle: nil),forCellWithReuseIdentifier: "GenresCell")
        
        genres_data = [
            Genrens (title: "Action" , description: "Onepice,Naruto,One punch man", image: #imageLiteral(resourceName: "Rectangle 5"), rating: #imageLiteral(resourceName: "Vector (2)")),
            Genrens (title: "Manga" , description: "Onepice,Naruto,One punch man", image: #imageLiteral(resourceName: "Rectangle 5"), rating: #imageLiteral(resourceName: "Vector (2)")),
            Genrens (title: "Action" , description: "Onepice,Naruto,One punch man", image: #imageLiteral(resourceName: "Rectangle 5"), rating: #imageLiteral(resourceName: "Vector (2)")),
            Genrens (title: "Action" , description: "Onepice,Naruto,One punch man", image: #imageLiteral(resourceName: "Rectangle 5"), rating: #imageLiteral(resourceName: "Vector (2)")),
            Genrens (title: "Action" , description: "Onepice,Naruto,One punch man", image: #imageLiteral(resourceName: "Rectangle 5"), rating: #imageLiteral(resourceName: "Vector (2)")),
            Genrens (title: "Action" , description: "Onepice,Naruto,One punch man", image: #imageLiteral(resourceName: "Rectangle 5"), rating: #imageLiteral(resourceName: "Vector (2)"))

        ]
        
        
        genres = genres_data
        
        
        
        

    }
    
    
    


}
extension Welcome2Controller: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return genres.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenresCell", for: indexPath) as! GenresCell
                cell.setup(genres[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width  , height: collectionView.frame.height / 4)
    }
    
   
}
