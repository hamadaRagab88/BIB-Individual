//
//  NetworkRouter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
class NetworkRouter: BaseRouter{
    
    class func CreateNetworkViewController()-> UIViewController {
        let NetworkView = NetworkViewController.loadFromStoryboard(name: "NetworkStoryboard")
        let view = NetworkView as? NetworkViewProtocol
        let router = NetworkRouter()
        let presenter = NetworkPresenter(view: view,router: router)
        view?.presenter = presenter
        return NetworkView
    }
    func goToClaimsView(from view:  NetworkViewProtocol?)
    {
        let claimsView = ClaimsRouter.CreateClaimsViewController()
        pushViewController(nextView: claimsView, view: view as? UIViewController)
    }
    func goToMedicalView(from view:  NetworkViewProtocol?)
    {
        let medicalView = MedicalNetworkRouter.CreateMedicalNetworkViewController()
        pushViewController(nextView: medicalView, view: view as? UIViewController)
    }
    func goToRenewalView(from view:  NetworkViewProtocol?)
    {
        let renewalView = RenewalRouter.CreateRenewalViewController()
        pushViewController(nextView: renewalView, view: view as? UIViewController)
    }
    
}
