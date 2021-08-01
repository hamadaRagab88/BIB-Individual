//
//  RegisterPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
class RegisterPresenter: BasePresenter {
   weak var view: RegisterViewProtocol?
    var router: RegisterRouter
    init(view: RegisterViewProtocol?,router: RegisterRouter)
    {
        self.router = router
        self.view = view
    }
}

extension RegisterPresenter: RegisterPresenterProtocol{
   
}
