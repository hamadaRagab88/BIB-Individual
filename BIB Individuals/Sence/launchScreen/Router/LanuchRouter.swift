//
//  LanuchRouter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
import UIKit
class LanuchRouter{
    
    class func CreateLanuchViewController()-> UIViewController {
        let LanuchView = LuanchViewController.loadFromStoryboard(name: "LanuchStoryboard")
//        let view = LanuchView as?  LanuchViewProtocol
//        let router = MedicalNetworkRouter()
//        let presenter = MedicalNetworkPresenter(view: view,router: router)
//        view?.presenter = presenter
        return LanuchView
    }

}
