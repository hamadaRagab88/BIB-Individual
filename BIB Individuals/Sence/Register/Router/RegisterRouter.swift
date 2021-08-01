//
//  RegisterRouter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
import UIKit
class RegisterRouter{
    
    class func CreateRegisterViewController()-> UIViewController {
        let RegisterView = RegisterViewController.loadFromStoryboard(name: "RegisterStoryboard")
        let view = RegisterView as?  RegisterViewProtocol
        let router = RegisterRouter()
        let presenter = RegisterPresenter(view: view,router: router)
        view?.presenter = presenter
        return RegisterView
    }
}
