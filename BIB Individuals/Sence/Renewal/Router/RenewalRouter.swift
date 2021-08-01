//
//  RenewalRouter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
import UIKit
class RenewalRouter: BaseRouter{
    
    class func CreateRenewalViewController()-> UIViewController {
        let RenewalView = RenewalViewController.loadFromStoryboard(name: "RenewalStoryboard")
        let view = RenewalView as?  RenewalViewProtocol
        let router = RenewalRouter()
        let presenter = RenewalPresenter(view: view,router: router)
        view?.presenter = presenter
        return RenewalView
    }
    func goBack(from view:  RenewalViewProtocol?)
    {
        popViewController(view: view as? UIViewController)
    }
}
