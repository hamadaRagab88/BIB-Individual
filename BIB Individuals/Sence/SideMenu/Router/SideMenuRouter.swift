//
//  SideMenuRouter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
class SideMenuRouter{
    
    class func CreateSideMenuViewController()-> UIViewController {
        let SideMenuView = SideMenuViewController.loadFromStoryboard(name: "SideMenuStoryboard")
        let view = SideMenuView as? SideMenuViewProtocol
        let router = SideMenuRouter()
        let presenter = SideMenuPresenter(view: view,router: router)
        view?.presenter = presenter
        return SideMenuView
    }
    
}
