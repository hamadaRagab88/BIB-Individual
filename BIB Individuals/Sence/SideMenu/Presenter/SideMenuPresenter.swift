//
//  SideMenuPresenter.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//


import Foundation
class SideMenuPresenter: BasePresenter {
    weak var view: SideMenuViewProtocol?
    var router: SideMenuRouter
    let sideMenuItems:[String] = [String]()
    var tableViewData: [CellData] = [CellData]()
    let InsurenceCatigories:[sectionDataSource] = [sectionDataSource(sectionTitle: "personal insurence", sectionPhoto:"personalInsurence")]
    let networks:[sectionDataSource] = [sectionDataSource(sectionTitle: "medical network", sectionPhoto: "network"),sectionDataSource(sectionTitle: "repair centers", sectionPhoto:"repair")]
    let help :[sectionDataSource] = [sectionDataSource(sectionTitle: "contact us", sectionPhoto: "BeConnected"),sectionDataSource(sectionTitle: "Be connected", sectionPhoto: "BeConnected"),sectionDataSource(sectionTitle: "FQA", sectionPhoto:  "FQA"),sectionDataSource(sectionTitle: "about app", sectionPhoto:  "aboutApp")]
    init(view: SideMenuViewProtocol?,router: SideMenuRouter)
    {
        self.router = router
        self.view = view
    }
}

extension SideMenuPresenter: SideMenuPresenterProtocol{
    
    func didSelectRow(row: Int, section: Int) {
        print("")
    }
    
    func setExpandingToTrue(index: Int) {
        tableViewData[index].isExpanding = true
    }
    func setExpandingToFalse(index: Int) {
        tableViewData[index].isExpanding = false
    }
    
    
    func viewDidLoad()
    {
        tableViewData = [CellData(isExpanding: false, sectionData: [], titel: "Home", image: "homePage"),CellData(isExpanding: false, sectionData: [], titel: "about us", image:"aboutUS"),CellData(isExpanding: false, sectionData: InsurenceCatigories, titel: "Insurence catigories", image:  "sideMenu"),CellData(isExpanding: false, sectionData: [], titel: "Renewal", image:  "renewal"),CellData(isExpanding: false, sectionData: [], titel: "Claims", image:  "claims"),CellData(isExpanding: false, sectionData: networks, titel: "Networks", image:  "network"),CellData(isExpanding: false, sectionData: [], titel: "Languages", image: "language"),CellData(isExpanding: false, sectionData: [], titel: "Blog", image:  "blog"),CellData(isExpanding: false, sectionData: help, titel: "Need help", image: "help"),CellData(isExpanding: false, sectionData: [], titel: "Setting", image:  "setting"),CellData(isExpanding: false, sectionData: [], titel: "logout", image: "logout")]
    }
    // Configure TableView
    
    func returnTableViewSectionCount() -> Int {
        return tableViewData.count
    }
    
    func returnTableViewRowsCount(section: Int) -> Int {
        return tableViewData[section].sectionData.count + 1
    }
    func isExpanding(section: Int) -> Bool {
        return tableViewData[section].isExpanding
    }
    func configureSideMenuCell(cell: sideMenuCellProtocol, row: Int, section: Int) {
        let section2 = row - 1
        if row == 0 {
            cell.displayTitel(title: tableViewData[section].titel)
            cell.displayIconImage(image: tableViewData[section].image)
            if section == 2 || section == 5 || section == 8 {
                if tableViewData[section].isExpanding == true {
                    cell.displayShowMoreIcon(image: "bottomArrow")
                    cell.hideShowMoreIamge(hide: false)
                    
                }
                else {
                    cell.displayShowMoreIcon(image: "arrow")
                    cell.hideShowMoreIamge(hide: false)
                    
                }
            }
        }
        else{
            cell.hideShowMoreIamge(hide: true)
            cell.displayTitel(title: tableViewData[section].sectionData[section2].sectionTitle)
            cell.displayIconImage(image:  tableViewData[section].sectionData[section2].sectionPhoto)
           
        }
    }
    
    
    
}
