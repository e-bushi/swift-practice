//
//  PushButton.swift
//  flo
//
//  Created by Chris Mauldin on 10/25/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import UIKit


@IBDesignable

class PushButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
     */
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.blue.setFill()
        path.fill()
        
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * Constants.plusButtonScale
        let halfPlusWidth = plusWidth / 2
        
        let plusPath = UIBezierPath()
        
        plusPath.lineWidth = Constants.plusLineWidth
        
        plusPath.move(to: CGPoint(
            x: halfWidth - halfPlusWidth,
            y: halfHeight
        ))
        
        plusPath.addLine(to: CGPoint(
            x: halfWidth + halfPlusWidth,
            y: halfHeight
        ))
        
        UIColor.white.setStroke()
        
        plusPath.stroke()
        
        let vertPath = UIBezierPath()
        
        vertPath.lineWidth = Constants.plusLineWidth
        
        vertPath.move(to: CGPoint(
            x: halfWidth,
            y: halfHeight - halfPlusWidth
        ))
        
        vertPath.addLine(to: CGPoint(
            x: halfWidth,
            y: halfHeight + halfPlusWidth
        ))
        
        UIColor.white.setStroke()
        vertPath.stroke()
       
    }
    
    private struct Constants {
        static let plusLineWidth: CGFloat = 3.0
        static let plusButtonScale: CGFloat = 0.6
        static let halfPointScale: CGFloat = 0.5
    }
    
    private var halfWidth: CGFloat {
        return bounds.width / 2
    }
    
    private var halfHeight: CGFloat {
        return bounds.height / 2
    }
    

}
