//
//  NetworkProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
protocol  NetworkViewProtocol: baseViewProtocols {
    var presenter:  NetworkPresenterProtocol? {get set}
}

protocol  NetworkPresenterProtocol: basePresenterProtocols {
    var view:  NetworkViewProtocol? {get set}
    func goToRenewal()
    func goToMedicalNetwork()
    func goToClaimsView()
   
}
