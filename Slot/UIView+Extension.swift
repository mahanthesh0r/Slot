//
//  UIView+Extension.swift
//  Slot
//
//  Created by Mahanthesh R on 05/08/18.
//  Copyright © 2018 Mahanthesh. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y:0.0)
        
        layer.insertSublayer(gradientLayer, at:0)
    }
}
