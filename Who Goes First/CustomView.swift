//
//  CustomView.swift
//  Who Goes First
//
//  Created by Guled Ali on 2/7/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import UIKit

class CustomView: UIView {

 
    
    override func draw(_ rect: CGRect) {
        
        let roundedRact = UIBezierPath(roundedRect: bounds, cornerRadius: 16.0)
        roundedRact.addClip()
        UIColor.white.setFill()
        roundedRact.fill()
    }
    

}
