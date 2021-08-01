//
//  RegisterProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
protocol RegisterViewProtocol: baseViewProtocols {
    var presenter:  RegisterPresenterProtocol? {get set}
}

protocol RegisterPresenterProtocol: basePresenterProtocols {
    var view:  RegisterViewProtocol? {get set}
}
