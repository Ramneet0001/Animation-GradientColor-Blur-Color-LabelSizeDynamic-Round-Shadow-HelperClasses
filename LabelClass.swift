//
//  LabelClass.swift
//
//  Created by Ramneet Singh
//  Copyright © 2018 Ramneet Singh. All rights reserved.
//

import Foundation
import UIKit


public extension UIDevice {
    
    var iPhone: Bool {
        return UIDevice().userInterfaceIdiom == .phone
    }
    var iPad: Bool {
        return UIDevice().userInterfaceIdiom == .pad
    }
    
    enum ScreenType: String {
        case iPhone4
        case iPhone5
        case iPhone6
        case iPhone6Plus
        case iPhoneX
        case iPad
        case Unknown
    }
    
    var screenType: ScreenType {
        
        // guard iPhone else { return .Unknown}
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4
        case 1136:
            return .iPhone5
        case 1334:
            return .iPhone6
        case 2208, 1920:
            return .iPhone6Plus
        case 2436:
            return .iPhoneX
        case 2048.0:
            return .iPad
        default:
            return .Unknown
        }
    }
}


class DynamicSizeLabel : UILabel {
    required init(coder aDecoder: (NSCoder?)) {
        super.init(coder: aDecoder!)!
      
        switch UIDevice().screenType {
        case .iPhone4, .iPhone5:  // iPhone 4 & iPhone 5
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize - 2)
            break
        case .iPhone6:            // iPhone 6 & iPhone 7
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize)
            break
        case .iPhone6Plus:        // iPhone 6 Plus & iPhone 7 Plus
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize + 4)
            break
        case .iPhoneX:            // iPhone X
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize)
            break
        case .iPad:               // iPad
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize + 6)
            break
        default:
            break
        }
       
    }
}

class Dynamic_Greater_SizeLabel : UILabel {
    required init(coder aDecoder: (NSCoder?)) {
        super.init(coder: aDecoder!)!
        
        switch UIDevice().screenType {
        case .iPhone4, .iPhone5:  // iPhone 4 & iPhone 5
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize - 2)
            break
        case .iPhone6:            // iPhone 6 & iPhone 7
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize)
            break
        case .iPhone6Plus:        // iPhone 6 Plus & iPhone 7 Plus
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize + 6)
            break
        case .iPhoneX:            // iPhone X
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize)
            break
        case .iPad:               // iPad
            self.font = UIFont(name: (self.font.fontName), size: font.pointSize + 9)
            break
        default:
            break
        }
        
    }
}





class DynamicSizeTextField : UITextField {
    
    required init(coder aDecoder: (NSCoder?)) {
        super.init(coder: aDecoder!)!
        
        switch UIDevice().screenType {
        case .iPhone4, .iPhone5:  // iPhone 4 & iPhone 5
            self.font = UIFont.systemFont(ofSize: (font?.pointSize)! - 2)
            break
        case .iPhone6:            // iPhone 6 & iPhone 7
            self.font = UIFont.systemFont(ofSize: (font?.pointSize)!)
            break
        case .iPhone6Plus:        // iPhone 6 Plus & iPhone 7 Plus
            self.font = UIFont.systemFont(ofSize: (font?.pointSize)! + 4)
            break
        case .iPhoneX:            // iPhone X
            self.font = UIFont.systemFont(ofSize: (font?.pointSize)!)
            break
        case .iPad:               // iPad
            self.font = UIFont.systemFont(ofSize: (font?.pointSize)! + 7)
            break
        default:
            break
        }
        
    }
}


extension UILabel {
    @IBInspectable
    var rotation: Int {
        get {
            return 0
        } set {
            let radians = CGFloat(CGFloat(Double.pi) * CGFloat(newValue) / CGFloat(180.0))
            self.transform = CGAffineTransform(rotationAngle: radians)
        }
    }
}




class customLabelSize: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customSize()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customSize()
    }
    private func customSize() {
        
        
        
    }
}


