//
//  HomePageProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
protocol HomePageViewProtocol: baseViewProtocols {
    var presenter:  HomePagePresenterProtocol? {get set}
}

protocol  HomePagePresenterProtocol: basePresenterProtocols {
    var view:  HomePageViewProtocol? {get set}
}
