//
//  HomePageRouter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
class HomePageRouter{
    
    class func CreateHomePageViewController()-> UIViewController {
        let HomePageView = HomePageViewController.loadFromStoryboard(name: "HomeStoryboard")
        let view = HomePageView as? HomePageViewProtocol
        let router = HomePageRouter()
        let presenter = HomePagePresenter(view: view,router: router)
        view?.presenter = presenter
        return HomePageView
    }
}
