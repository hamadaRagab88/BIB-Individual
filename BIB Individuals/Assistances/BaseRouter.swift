//
//  BaseRouter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
import UIKit
class BaseRouter {
    func popViewController(view: UIViewController?){
        if let currentView = view {
            currentView.navigationController?.popViewController(animated: true)
        }
    }
    func dismissViewController(view: UIViewController?){
        if let currentView = view {
            currentView.dismiss(animated: true, completion: nil)
        }
    }
    func pushViewController (nextView: UIViewController,view: UIViewController?){
        if let currentView = view {
            currentView.navigationController?.pushViewController(nextView, animated: true)
        }
    }
}
