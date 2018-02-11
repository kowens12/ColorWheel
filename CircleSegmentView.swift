//
//  CircleSegmentView.swift
//  ColorWheel
//
//  Created by Katherine Owens on 2/10/18.
//  Copyright © 2018 Katherine Owens. All rights reserved.
//

import UIKit

class CircleSegmentView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        isOpaque = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    var arcs = [Arc]() {
        didSet { setNeedsDisplay() }
        //redraw once we have the values of each arc in the array
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let radius = min(frame.size.width, frame.size.height) * 0.5
        
        //get the center so we have a starting place for each new arc once we loop through array
        let viewCenter = CGPoint(x: bounds.size.width * 0.5, y: bounds.size.height * 0.5)
        var startingAngle = -CGFloat.pi * 0.5
        let arcCount = arcs.count
        
        for arc in arcs {
            context?.setFillColor(arc.color.cgcolor)
            
            let endingAngle = startingAngle + 2 * .pi * (arc.value / arcCount)
            
            context?.move(to: viewCenter)
            context?.addArc(center: viewCenter,
                            radius: radius,
                            startAngle: startingAngle,
                            endAngle: endingAngle,
                            clockwise: false)
            
            context?.fillPath()
            startingAngle = endingAngle
            ///re set the starting angle for next arc to the ending angle of last arc so it ends up making a whole circle of arcs. aka start the next one where the last one ended!
        }
    }
    
}

struct Arc {
    var color: CGColor
    var size: CGFloat
}
