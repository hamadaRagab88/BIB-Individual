//
//  ServicesPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//


import Foundation
class ServicesPresenter: BasePresenter {
   weak var view: ServicesViewProtocol?
    var router: ServicesRouter
    init(view: ServicesViewProtocol?,router: ServicesRouter)
    {
        self.router = router
        self.view = view
    }
}

extension ServicesPresenter: ServicesPresenterProtocol{
   
}
