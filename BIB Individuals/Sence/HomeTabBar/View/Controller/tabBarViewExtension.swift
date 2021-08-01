//
//  tabBarViewExtension.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
//

import Foundation
import UIKit
extension tabBarViewController:tabBarViewProtocol {
   
    
}

extension tabBarViewController:TappedStackcDelegate {
    func stackDidTap(_ stack: TappedStack) {
        selectedStack(tag: stack.tag)
//        selectedStack(stack: stack, iselected: true)
        let previousIndex = selectedIndex
        selectedIndex = stack.tag
//        buttons![previousIndex].isSelected = false
        let previousVC = ViewControllers[previousIndex]
        previousVC.willMove(toParent: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParent()
        let vc = ViewControllers[selectedIndex]
        addChild(vc)
        vc.view.frame = containerView.bounds
        containerView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    private func selectedStack(tag: Int)
    {
        if tag != 2 {
           
            for stack in stacks! {
                let StackBTN = stack.subviews[0] as? UIButton
                let stackLBL = stack.subviews[1] as? UILabel
                let image = StackBTN?.imageView?.image
                if stack.tag == tag{
                        StackBTN?.setImage(image!.withRenderingMode(.alwaysOriginal).withTintColor(UIColor.mainColor), for: .normal)
                        stackLBL?.textColor = .mainColor
                }
                else{
                    if stack.tag != 2 {
                            StackBTN?.setImage(image!.withRenderingMode(.alwaysOriginal).withTintColor(UIColor.grayText), for: .normal)
                        stackLBL?.textColor = UIColor.grayText
                    }
                }
            }
        }
    }
}
