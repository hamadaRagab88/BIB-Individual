//
//  RenewalProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
protocol RenewalViewProtocol: baseViewProtocols {
    var presenter:  RenewalPresenterProtocol? {get set}
}

protocol RenewalPresenterProtocol: basePresenterProtocols {
    var view:  RenewalViewProtocol? {get set}
    func goBack()
}
