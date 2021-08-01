//
//  NetworkViewController.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import UIKit

class NetworkViewController: BaseViewController {
    
    @IBOutlet weak var medicalView: TappedView!
    @IBOutlet weak var renewalView: TappedView!
    @IBOutlet weak var claimView: TappedView!
    var presenter:  NetworkPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }
    private func configureView()
    {
        medicalView.delegate = self
        renewalView.delegate = self
        claimView.delegate = self
    }

}
