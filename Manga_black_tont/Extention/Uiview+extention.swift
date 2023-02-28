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
    
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}


extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}
