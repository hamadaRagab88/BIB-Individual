//
//  SideMenuViewExtension.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
extension SideMenuViewController:SideMenuViewProtocol {
}
extension SideMenuViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        presenter?.returnTableViewSectionCount() ?? 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if presenter?.isExpanding(section: section) ?? false
        {
            return presenter?.returnTableViewRowsCount(section: section) ?? 0
        }
        else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellIdentifier, for: indexPath) as! sideMenuCell
        presenter?.configureSideMenuCell(cell: cell, row: indexPath.row, section: indexPath.section)
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            print("home")
        case 1:
            print("about ")
        case 2:
            if (presenter?.isExpanding(section: indexPath.section) ?? false)
            {
                presenter?.setExpandingToFalse(index: indexPath.section)
                let sections = IndexSet.init(integer: indexPath.section)
                sideMenuTableView.reloadSections(sections, with: .fade)
                switch indexPath.row {
                case 1:
                    print("insurence Catigories")
                default:
                    print("Defualt")
                }
            }
            else{
                presenter?.setExpandingToTrue(index: indexPath.section)
                let sections = IndexSet.init(integer: indexPath.section)
                sideMenuTableView.reloadSections(sections, with: .fade)
            }
        case 3:
            print("renewal")
        case 4:
            print("claims")
        case 5:
            if (presenter?.isExpanding(section: indexPath.section) ?? false)
            {
                presenter?.setExpandingToFalse(index: indexPath.section)
                let sections = IndexSet.init(integer: indexPath.section)
                sideMenuTableView.reloadSections(sections, with: .fade)
                switch indexPath.row {
                case 1:
                    print("medical network")
                case 2:
                    print("repair centers")
                default:
                    print("Defualt")
                }
            }
            else{
                presenter?.setExpandingToTrue(index: indexPath.section)
                
                let sections = IndexSet.init(integer: indexPath.section)
                sideMenuTableView.reloadSections(sections, with: .fade)
            }        case 6:
                print("language")
        case 7:
            print("Blog")
        case 8:
            if (presenter?.isExpanding(section: indexPath.section) ?? false)
            {
                presenter?.setExpandingToFalse(index: indexPath.section)
                let sections = IndexSet.init(integer: indexPath.section)
                sideMenuTableView.reloadSections(sections, with: .fade)
                switch indexPath.row {
                case 1:
                    print("Contact us")
                case 2:
                    print("Be connected")
                case 3:
                    print("FQA")
                case 4:
                    print("about app")
                default:
                    print("Defualt")
                }
            }
            else{
                presenter?.setExpandingToTrue(index: indexPath.section)
                let sections = IndexSet.init(integer: indexPath.section)
                sideMenuTableView.reloadSections(sections, with: .fade)
            }        case 9:
                print("setting")
        case 10:
            print("log out")
        default:
            print("Not selected")
        }
    }
    
}
