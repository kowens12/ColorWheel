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
        //break size out into variable since it's all the same...later see if there's a prettier way to do this... hmm...

        circleSegmentView.center.x = self.view.center.x
        circleSegmentView.center.y = self.view.center.y
        circleSegmentView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 200)
        circleSegmentView.arcs = [
            
            Arc(color: UIColor.red.cgColor, size: size),
            Arc(color: UIColor.blue.cgColor, size: size),
            Arc(color: UIColor.green.cgColor, size: size),
            Arc(color: UIColor.purple.cgColor, size: size)
        ]
        
        view.addSubview(circleSegmentView)
    }
}

