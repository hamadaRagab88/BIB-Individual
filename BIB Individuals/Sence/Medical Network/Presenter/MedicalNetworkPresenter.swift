//
//  MedicalNetworkPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
class MedicalNetworkPresenter: BasePresenter {
   weak var view: MedicalNetworkViewProtocol?
    var router: MedicalNetworkRouter
    init(view: MedicalNetworkViewProtocol?,router: MedicalNetworkRouter)
    {
        self.router = router
        self.view = view
    }
}

extension MedicalNetworkPresenter: MedicalNetworkPresenterProtocol{
    func goBack() {
        router.goBack(from: view)
    }
}
