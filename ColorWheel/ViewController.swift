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
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        circleSegmentView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 200)
        circleSegmentView.arcs = [
            Arc(color: UIColor.red.cgColor, size: 25.0),
            Arc(color: UIColor.blue.cgColor, size: 25.0),
            Arc(color: UIColor.green.cgColor, size: 25.0),
            Arc(color: UIColor.blue.cgColor, size: 25.0)
        ]
        
        view.addSubview(circleSegmentView)
    }
}

