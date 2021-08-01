//
//  ServicesProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
protocol  ServicesViewProtocol: baseViewProtocols {
    var presenter:  ServicesPresenterProtocol? {get set}
}

protocol  ServicesPresenterProtocol: basePresenterProtocols {
    var view:  ServicesViewProtocol? {get set}
}
