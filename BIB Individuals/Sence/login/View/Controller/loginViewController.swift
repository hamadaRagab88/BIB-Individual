//
//  loginViewController.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import UIKit

class loginViewController: BaseViewController {
    var presenter: loginPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        presenter?.goToTabBar()
    }
}
