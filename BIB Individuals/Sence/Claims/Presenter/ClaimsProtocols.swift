//
//  ClaimsProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
protocol ClaimsViewProtocol: baseViewProtocols {
    var presenter:  ClaimsPresenterProtocol? {get set}
}

protocol ClaimsPresenterProtocol: basePresenterProtocols {
    var view:  ClaimsViewProtocol? {get set}
    func goBack()
}
