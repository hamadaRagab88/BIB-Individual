//
//  NotificationsRouter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
// 

import Foundation
import UIKit
class NotificationsRouter{
    
    class func CreateNotificationsViewController()-> UIViewController {
        let NotificationsView = NotificationsViewController.loadFromStoryboard(name: "NotificationsStoryboard")
        let view = NotificationsView as? NotificationsViewProtocol
        let router = NotificationsRouter()
        let presenter = NotificationsPresenter(view: view,router: router)
        view?.presenter = presenter
        return NotificationsView
    }
}
