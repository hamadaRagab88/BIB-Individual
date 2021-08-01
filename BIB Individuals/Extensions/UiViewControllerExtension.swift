//
//  UiviewControllerExtension.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
extension UIViewController {
    func validateEmailTextFieldWithText(email: String?) -> Bool {
        guard let email = email else {
            return true
        }
        
        if email.isEmpty {
            return true
        } else if !isValidEmail(email: email) {
            return false
        } else {
            return true
        }
    }
    
    func isValidEmail(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    func CreateAlert(title: String, message: String)
    {
        let alert = UIAlertController(title: "", message: message, preferredStyle: UIAlertController.Style.alert)
        let messageFont = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .bold)]
        let messageAttrString = NSMutableAttributedString(string: message, attributes: messageFont)
        alert.setValue(messageAttrString, forKey: "attributedMessage")
        alert.addAction(UIAlertAction(title: "ok".localized, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func call(telephone: String)
    {
        if let url = URL(string: "tel://\(telephone)"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        
        return instantiateFromNib()
    }
    
    static func loadFromStoryboard(name: String ) -> UIViewController{
        let storyboard = UIStoryboard(name: name.self, bundle: nil)
        
        
        return storyboard.instantiateViewController(withIdentifier: name)
    }
    
}
