//
//  ViewController.swift
//  ColorWheel
//
//  Created by Katherine Owens on 2/9/18.
//  Copyright © 2018 Katherine Owens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let circleSegmentView = CircleSegmentView()
    override func viewDidLoad() {
        super.viewDidLoad()
       // makeCircle()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        circleSegmentView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 200)
    }

//    func makeCircle() {
//        let circlePath = UIBezierPath(arcCenter: CGPoint(x:100, y:100), radius: CGFloat(100), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
//
//        let circleLayer = CAShapeLayer()
//        circleLayer.path = circlePath.cgPath
//
//        circleLayer.fillColor = UIColor.red.cgColor
//        view.layer.addSublayer(circleLayer)
//
//    }
    

}

