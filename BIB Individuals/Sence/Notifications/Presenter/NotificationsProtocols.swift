//
//  NotificationsProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
protocol  NotificationsViewProtocol: baseViewProtocols {
    var presenter:  NotificationsPresenterProtocol? {get set}
}

protocol  NotificationsPresenterProtocol: basePresenterProtocols {
    var view:  NotificationsViewProtocol? {get set}
}
