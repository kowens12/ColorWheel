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
        
        let size = CGFloat(90.0)

        circleSegmentView.frame = CGRect(x: 0, y: self.view.frame.midY * 0.75, width: view.frame.size.width, height: 200)
        //TODO: looks like the midY of the view's frame times 0.75 works okay for now, but there's gotta be a better way to get that y point...
        
        circleSegmentView.arcs = [
            Arc(color: UIColor.red.cgColor, size: size),
            Arc(color: UIColor.blue.cgColor, size: size),
            Arc(color: UIColor.green.cgColor, size: size),
            Arc(color: UIColor.purple.cgColor, size: size)
        ]
        
        view.addSubview(circleSegmentView)
    }
    
    //TODO: gesture recogizers for rotation
    
}

