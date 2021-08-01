//
//  loginProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
protocol loginViewProtocol: baseViewProtocols {
    var presenter:  loginPresenterProtocol? {get set}
}

protocol  loginPresenterProtocol: basePresenterProtocols {
    var view:  loginViewProtocol? {get set}
    func goToTabBar()
}
