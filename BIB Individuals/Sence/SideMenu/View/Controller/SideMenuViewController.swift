//
//  SideMenuViewController.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import UIKit

class SideMenuViewController: BaseViewController {
    @IBOutlet weak var sideMenuTableView: UITableView!
    var presenter:  SideMenuPresenterProtocol?
    let tableViewCellIdentifier = "sideMenuCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureTableView()
        presenter?.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    private func configureView()
    {
        
    }
    private func configureTableView()
    {
        sideMenuTableView.delegate = self
        sideMenuTableView.dataSource = self
        let tableViewNib = UINib(nibName: tableViewCellIdentifier, bundle: nil)
        sideMenuTableView.register(tableViewNib, forCellReuseIdentifier: tableViewCellIdentifier)
    }
}

struct CellData {
    var isExpanding = Bool()
    var sectionData = [sectionDataSource]()
    var titel = String()
    var image = String()
}
struct sectionDataSource {
    var sectionTitle = String()
    var sectionPhoto = String()
}
