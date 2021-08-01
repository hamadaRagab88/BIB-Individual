//
//  ClaimsPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
class ClaimsPresenter: BasePresenter {
   weak var view: ClaimsViewProtocol?
    var router: ClaimsRouter
    init(view: ClaimsViewProtocol?,router: ClaimsRouter)
    {
        self.router = router
        self.view = view
    }
}

extension ClaimsPresenter: ClaimsPresenterProtocol{
    func goBack() {
        router.goBack(from: view)
    }
}
