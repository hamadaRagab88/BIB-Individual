//
//  StringExtension.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
extension String {
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }
    var isAllDigits: Bool{
        let characterSet = NSCharacterSet(charactersIn: "0123456789").inverted
        let inputString = components(separatedBy: characterSet)
        let filtered = inputString.joined(separator: "")
        return self == filtered
    }
}
