//
//  LabelExtension.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
extension UILabel {
    @IBInspectable var localizationKey: String {
        set {
            text = newValue.localized
        }
        get {
            return text!
        }
    }
}
