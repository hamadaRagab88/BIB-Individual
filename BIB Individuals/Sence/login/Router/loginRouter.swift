//
//  loginRouter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
import UIKit
class loginRouter{
    
    class func CreateloginViewController()-> UIViewController {
        let loginView = loginViewController.loadFromStoryboard(name: "loginStoryboard")
        let view = loginView as? loginViewProtocol
        let router = loginRouter()
        let presenter = loginPresenter(view: view,router: router)
        view?.presenter = presenter
        return loginView
    }
    func goToHomeBar(from view: loginViewProtocol?)
    {
        let tabBar = tabBarRouter.CreateTabBarViewController()
        if let view = view as? UIViewController{
            let navigation = UINavigationController(rootViewController: tabBar)
            navigation.modalPresentationStyle = .fullScreen
            view.present(navigation, animated: true, completion: nil)
        }
//        UIApplication.shared.windows.first?.rootViewController = UINavigationController(rootViewController: tabBar)
    }
}
