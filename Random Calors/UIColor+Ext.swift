//
//  UIColor+Ext.swift
//  Random Calors
//
//  Created by UGURCAN KAYA on 4/14/20.
//  Copyright © 2020 Veri Expo. All rights reserved.
//

import UIKit

extension UIColor{
   static func random() -> UIColor{
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
