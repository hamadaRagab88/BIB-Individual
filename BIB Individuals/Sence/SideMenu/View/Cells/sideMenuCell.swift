//
//  sideMenuCell.swift
//  BIB Individuals
//
//  Created by Apple on 7/31/21.
//

import UIKit

class sideMenuCell: UITableViewCell,sideMenuCellProtocol {
    
    @IBOutlet weak var showMoreImae: UIImageView!
    @IBOutlet weak var iconIamge: UIImageView!
    @IBOutlet weak var titelLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func displayTitel(title: String) {
        titelLBL.text = title
    }
    
    func displayIconImage(image: String) {
        iconIamge.image = UIImage(named: image)
    }
    
    func hideShowMoreIamge(hide: Bool) {
        showMoreImae.isHidden = hide
    }
    func displayShowMoreIcon(image: String) {
        showMoreImae.image = UIImage(named: image)
    }
    
    

    
}

protocol sideMenuCellProtocol: AnyObject {
    func displayTitel(title: String)
    func displayIconImage(image: String)
    func hideShowMoreIamge(hide: Bool)
    func displayShowMoreIcon(image: String)
}
