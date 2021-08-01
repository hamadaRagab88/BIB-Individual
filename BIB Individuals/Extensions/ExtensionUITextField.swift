//
//  ExtensionUITextField.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
extension UITextField {
    @IBInspectable var localizationKey: String {
        set {
            placeholder = newValue.localized
        }
        get {
            return placeholder!
        }
    }
}
