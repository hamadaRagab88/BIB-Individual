//
//  HomePagePresenter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
class HomePagePresenter: BasePresenter {
   weak var view: HomePageViewProtocol?
    var router: HomePageRouter
    init(view: HomePageViewProtocol?,router: HomePageRouter)
    {
        self.router = router
        self.view = view
    }
}

extension HomePagePresenter: HomePagePresenterProtocol{
   
}
