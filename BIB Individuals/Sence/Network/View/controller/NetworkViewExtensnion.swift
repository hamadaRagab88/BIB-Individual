//
//  NetworkViewExtensnion.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
extension NetworkViewController:NetworkViewProtocol {
   
    
}
extension NetworkViewController:TappedViewDelegate{
    func viewDidTap(_ view: TappedView) {
        if view == renewalView {
            presenter?.goToRenewal()
            
        }
        else if view == claimView {
            presenter?.goToClaimsView()
        }
        else if view == medicalView
        {
            presenter?.goToMedicalNetwork()
        }
        
    }
    
    
}
