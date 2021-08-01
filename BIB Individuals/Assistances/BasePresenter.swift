//
//  BasePresenter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
class BasePresenter: basePresenterProtocols{
    func showError(error: String){
        print("error", error)
    }
    
}

extension BasePresenter{
    func showAlertError(error: String) {
        self.showError(error: error)
    }
}

