//
//  MedicalNetworkProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
protocol MedicalNetworkViewProtocol: baseViewProtocols {
    var presenter:  MedicalNetworkPresenterProtocol? {get set}
}

protocol MedicalNetworkPresenterProtocol: basePresenterProtocols {
    var view:  MedicalNetworkViewProtocol? {get set}
    func goBack()
}
