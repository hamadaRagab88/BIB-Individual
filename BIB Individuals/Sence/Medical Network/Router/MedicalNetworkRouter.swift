//
//  MedicalNetworkRouter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
import UIKit
class MedicalNetworkRouter: BaseRouter{
    
    class func CreateMedicalNetworkViewController()-> UIViewController {
        let MedicalNetworkView = MedicalNetworkViewController.loadFromStoryboard(name: "MedicalNetworkStoryboard")
        let view = MedicalNetworkView as?  MedicalNetworkViewProtocol
        let router = MedicalNetworkRouter()
        let presenter = MedicalNetworkPresenter(view: view,router: router)
        view?.presenter = presenter
        return MedicalNetworkView
    }
    func goBack(from view:  MedicalNetworkViewProtocol?)
    {
        popViewController(view: view as? UIViewController)
    }
}
