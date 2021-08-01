////
////  UIImageExtension.swift
////  BIB Individuals
////
////  Created by Apple on 7/30/21.
////
//
//import Foundation
//import UIKit
//import Kingfisher
//extension UIImageView: ImagePickerDelegate{
//    public func didSelect(image: UIImage?) {
//        self.image = image
//    }
//    
//    func loadImageFrom(imgUrl: String,placeholder:String = "Logo") {
//        
//        if let url = URL(string: "http://pixelserver-001-site5.itempurl.com/uploads/\(imgUrl)"){
//           self.kf.setImage(with: url, placeholder: UIImage(named: placeholder), options: [.transition(.fade(0.2))])
//            print("urlll",url)
//        }else{
//            print("image url: nil ")
//        }
//       
//       }
//
//    
//}
