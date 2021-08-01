//
//  loginPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
class loginPresenter: BasePresenter {
   weak var view: loginViewProtocol?
    var router: loginRouter
    init(view: loginViewProtocol?,router: loginRouter)
    {
        self.router = router
        self.view = view
    }
}

extension loginPresenter: loginPresenterProtocol{
    func goToTabBar() {
        router.goToHomeBar(from: view)
    }
}
