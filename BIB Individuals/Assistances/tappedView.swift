//
//  tappedView.swift
//  BIB Individuals
//
//  Created by Apple on 8/1/21.
//

import Foundation
import UIKit
class TappedView: UIView{
    
    weak var delegate:TappedViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.isUserInteractionEnabled = true
              let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapAction))

              self.addGestureRecognizer(tap)
    }
    
    
    @objc private func tapAction(){
        
        delegate?.viewDidTap(self)
    }
}

protocol TappedViewDelegate:NSObject {
    
    func viewDidTap(_ view:TappedView)
}
