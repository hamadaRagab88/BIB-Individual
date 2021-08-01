//
//  TabBarRouter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
class tabBarRouter{
    
    class func CreateTabBarViewController()-> UIViewController {
        let tabBarView = tabBarViewController.loadFromStoryboard(name: "tabBarStoryboard")
        let view = tabBarView as? tabBarViewProtocol
        let router = tabBarRouter()
        let presenter = tabBarPresenter(view: view,router: router)
        view?.presenter = presenter
        return tabBarView
    }
}
