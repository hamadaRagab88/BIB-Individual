//
//  MedicalNetworkViewController.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import UIKit

class MedicalNetworkViewController: BaseViewController {
    var presenter: MedicalNetworkPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTapped(_ sender: Any) {
        presenter?.goBack()
    }
}
