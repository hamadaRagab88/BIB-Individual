//
//  File.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
class ServicesRouter{
    
    class func CreateServicesViewController()-> UIViewController {
        let ServicesView = ServicesViewController.loadFromStoryboard(name: "ServicesStoryboard")
        let view = ServicesView as? ServicesViewProtocol
        let router = ServicesRouter()
        let presenter = ServicesPresenter(view: view,router: router)
        view?.presenter = presenter
        return ServicesView
    }
}
