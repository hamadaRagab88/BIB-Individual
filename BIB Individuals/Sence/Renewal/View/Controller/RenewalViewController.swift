//
//  RenewalViewController.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import UIKit

class RenewalViewController: BaseViewController {
    var presenter: RenewalPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backTapped(_ sender: Any) {
        presenter?.goBack()
    }

}
