//
//  LuanchViewController.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import UIKit

class LuanchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigureView()
        // Do any additional setup after loading the view.
    }
    private func ConfigureView()
    {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            let loginView = loginRouter.CreateloginViewController()
            loginView.modalPresentationStyle = .fullScreen
            self.present(loginView, animated: true, completion: nil)

        }
    }

}
