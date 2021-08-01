//
//  SideMenuProtocols.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
protocol SideMenuViewProtocol: baseViewProtocols {
    var presenter:  SideMenuPresenterProtocol? {get set}
}

protocol  SideMenuPresenterProtocol: basePresenterProtocols {
    var view:  SideMenuViewProtocol? {get set}
    func returnTableViewSectionCount()-> Int
    func returnTableViewRowsCount(section: Int)-> Int
    func configureSideMenuCell(cell: sideMenuCellProtocol, row: Int, section: Int)
    func viewDidLoad()
    func isExpanding(section: Int) -> Bool
    func didSelectRow(row: Int, section: Int)
    func setExpandingToFalse(index: Int)
    func setExpandingToTrue(index: Int)
}
