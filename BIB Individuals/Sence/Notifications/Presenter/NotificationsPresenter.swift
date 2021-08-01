//
//  NotificationsPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//


import Foundation
class NotificationsPresenter: BasePresenter {
   weak var view: NotificationsViewProtocol?
    var router: NotificationsRouter
    init(view: NotificationsViewProtocol?,router: NotificationsRouter)
    {
        self.router = router
        self.view = view
    }
}

extension NotificationsPresenter: NotificationsPresenterProtocol{
   
}
