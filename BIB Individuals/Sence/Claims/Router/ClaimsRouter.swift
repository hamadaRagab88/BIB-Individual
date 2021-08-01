//
//  ClaimsRouter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
import UIKit
class ClaimsRouter: BaseRouter{
    
    class func CreateClaimsViewController()-> UIViewController {
        let ClaimsView = ClaimsViewController.loadFromStoryboard(name: "ClaimsStoryboard")
        let view = ClaimsView as?  ClaimsViewProtocol
        let router = ClaimsRouter()
        let presenter = ClaimsPresenter(view: view,router: router)
        view?.presenter = presenter
        return ClaimsView
    }
    func goBack(from view:  ClaimsViewProtocol?)
    {
        popViewController(view: view as? UIViewController)
    }
}
