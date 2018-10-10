//
//  Blur.swift
//  EatDigger
//
//  Created by Ramneet Singh on 03/05/18.
//  Copyright © 2018 Ramneet Singh. All rights reserved.
//

import UIKit


class customBlurView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customBlurEffect()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customBlurEffect()
    }
    
    private func customBlurEffect() {
        
        //        if  UIAccessibilityIsReduceTransparencyEnabled() {
        //            backgroundColor = .clear
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        blurEffectView.frame = bounds
        blurEffectView.alpha = 0.4
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(blurEffectView)
        //        } else {
        //            backgroundColor = .clear
        //        }
        
    }
    
}

