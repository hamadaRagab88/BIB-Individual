//
//  NetworkPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
class NetworkPresenter: BasePresenter {
   weak var view: NetworkViewProtocol?
    var router: NetworkRouter
    init(view: NetworkViewProtocol?,router: NetworkRouter)
    {
        self.router = router
        self.view = view
    }
}

extension NetworkPresenter: NetworkPresenterProtocol{
    // Router Functions    
    func goToRenewal() {
        router.goToRenewalView(from: view)
    }
    
    func goToMedicalNetwork() {
        router.goToMedicalView(from: view)
    }
    
    func goToClaimsView() {
        router.goToClaimsView(from: view)
    }
}
