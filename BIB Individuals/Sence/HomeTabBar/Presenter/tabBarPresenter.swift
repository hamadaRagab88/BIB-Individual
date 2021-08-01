//
//  tabBarPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
class tabBarPresenter: BasePresenter {
   weak var view: tabBarViewProtocol?
    var router: tabBarRouter
    init(view: tabBarViewProtocol?,router: tabBarRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension tabBarPresenter: tabBarPresenterProtocol{

}
