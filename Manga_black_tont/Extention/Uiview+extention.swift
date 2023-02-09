//
//  Uiview+extention.swift
//  Manga_black_tont
//
//  Created by Hoang Vu on 09/02/2023.
//

import UIKit

extension UIView {
   @IBInspectable var cornerRadius : CGFloat{
       get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
