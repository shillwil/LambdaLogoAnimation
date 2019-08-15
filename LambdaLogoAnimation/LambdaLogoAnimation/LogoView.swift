//
//  LogoView.swift
//  LambdaLogoAnimation
//
//  Created by Alex Shillingford on 8/15/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    private let logoRedColor = UIColor.red
    private let lambdaSymbolColor = UIColor.white
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addLines(between: [CGPoint(x: 20, y: 200),
                                       CGPoint(x: rect.maxX - 20, y: 200),
                                       CGPoint(x: rect.maxX - 20, y: 500),
                                       CGPoint(x: 207, y: 650),
                                       CGPoint(x: 20, y: 500),
                                       CGPoint(x: 20, y: 200)])
            
            context.setFillColor(logoRedColor.cgColor)
            context.fillPath()
            
            context.addLines(between: [CGPoint(x: rect.width / 2, y: 350),
                                       CGPoint(x: (rect.width / 2) + 30, y: 425),
                                       CGPoint(x: (rect.width / 2) + 60, y: 425),
                                       CGPoint(x: (rect.width / 2) + 15, y: 325),
                                       CGPoint(x: (rect.width / 2) - 15, y: 325),
                                       CGPoint(x: (rect.width / 2) - 60, y: 425),
                                       CGPoint(x: (rect.width / 2) - 30, y: 425),
                                       CGPoint(x: rect.width / 2, y: 350)])
            context.setFillColor(lambdaSymbolColor.cgColor)
            context.fillPath()
        }
        
    }
    

}
