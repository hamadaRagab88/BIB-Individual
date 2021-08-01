//
//  tabBarProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
// tabBar

import Foundation
protocol tabBarViewProtocol: baseViewProtocols {
    var presenter: tabBarPresenterProtocol? {get set}
}

protocol tabBarPresenterProtocol: basePresenterProtocols {
    var view: tabBarViewProtocol? {get set}
 
}
