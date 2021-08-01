//
//  buttonExtension.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
@IBDesignable
extension UIButton {
    @IBInspectable var localizationKey: String {
        set {
            setTitle(newValue.localized, for: .normal)
        }
        get {
            return (titleLabel?.text)!
        }
    }
    
}
