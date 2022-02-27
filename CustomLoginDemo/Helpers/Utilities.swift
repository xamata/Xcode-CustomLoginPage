//
//  Utilities.swift
//  customauth
//
//  Created by Christopher Ching on 2019-05-09.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

// Color Scheme for Volunteer Match
// Primary Green: #77cc44 || UIColor(red: 0.47, green: 0.80, blue: 0.27, alpha: 1.00)
// Primary Blue: #11bbee || UIColor(red: 0.07, green: 0.73, blue: 0.93, alpha: 1.00)
// Primary Orange: #ff5533 || UIColor(red: 1.00, green: 0.33, blue: 0.20, alpha: 1.00)


import Foundation
import UIKit

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

enum ColorPalette {
//    hex: 0xECF0F1
    static let chalk = UIColor.init(red: Int(1.00), green: Int(0.33), blue: Int(1.00))
//    0xE74C3C
    static let flame = UIColor(rgb: Int(0xE74C3C))
//    static let sky = UIColor(hex: 0x3498DB)
//    static let meadow = UIColor(hex: 0x2ECC71)
//    static let savanna = UIColor(hex: 0xE67E22)
//    static let bramble = UIColor(hex: 0x9B59B6)
//    static let midnight = UIColor(hex: 0x34495E)
//    static let stone = UIColor(hex: 0x95A5A6)
//    static let star = UIColor(hex: 0xF1C40F)
}


class Utilities {
    
    static func styleTextField(_ textfield:UITextField) {
        
        // Create the bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 1.00, green: 0.33, blue: 0.20, alpha: 1.00).cgColor
        
        // Remove border on text field
        textfield.borderStyle = .none
        
        // Add the line to the text field
        textfield.layer.addSublayer(bottomLine)
        
    }
    
    static func styleFilledButton(_ button:UIButton) {
        
        // Filled rounded corner style
        button.backgroundColor = UIColor(rgb: 0xff5533)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button:UIButton) {
        
        // Hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
    
    static func isPasswordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    static func circularImage(_ image : UIImageView){
        image.layer.masksToBounds = true
        image.layer.cornerRadius = image.bounds.width / 2
    }
    
    
    
    
}
