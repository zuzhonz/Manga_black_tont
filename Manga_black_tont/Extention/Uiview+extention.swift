//
//  Uiview+extention.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 09/02/2023.
//

import UIKit

let scale = UIScreen.main.bounds.height / 896
let scalew = UIScreen.main.bounds.width / 896

extension UIView {
   @IBInspectable var cornerRadius : CGFloat{
       get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
