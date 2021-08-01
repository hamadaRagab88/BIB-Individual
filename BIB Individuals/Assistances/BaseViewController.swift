//
//  BaseViewController.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
class  BaseViewController: UIViewController {
    override func viewDidLoad() {
           super.viewDidLoad()
       
   }
}
extension BaseViewController: baseViewProtocols{
    func hideKeyBoard() {
           let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
           tap.cancelsTouchesInView = false
           view.addGestureRecognizer(tap)
       }
       
       @objc func dismissKeyboard() {
           view.endEditing(true)
       }
   }
