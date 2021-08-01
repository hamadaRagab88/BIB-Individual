//
//  RenewalPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
class RenewalPresenter: BasePresenter {
   weak var view: RenewalViewProtocol?
    var router: RenewalRouter
    init(view: RenewalViewProtocol?,router: RenewalRouter)
    {
        self.router = router
        self.view = view
    }
}

extension RenewalPresenter: RenewalPresenterProtocol{
    func goBack() {
        router.goBack(from: view)
    }
}
