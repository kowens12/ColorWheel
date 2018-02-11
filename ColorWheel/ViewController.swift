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
        
        let rotationRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(sender:)))

        self.view.isUserInteractionEnabled = true
        rotationRecognizer.delegate = self as? UIGestureRecognizerDelegate
        self.circleSegmentView.addGestureRecognizer(rotationRecognizer)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        makeColorWheel()
    }
    
    func makeColorWheel() {
        let size = CGFloat(90.0)
        
        circleSegmentView.frame = CGRect(x: 0, y: self.view.frame.midY * 0.75, width: view.frame.size.width, height: 200)
        
        circleSegmentView.arcs = [
            Arc(color: UIColor.red.cgColor, size: size),
            Arc(color: UIColor.blue.cgColor, size: size),
            Arc(color: UIColor.green.cgColor, size: size),
            Arc(color: UIColor.purple.cgColor, size: size)
        ]
        
        view.addSubview(circleSegmentView)
        }
    
    @objc func handleRotation(sender: UIRotationGestureRecognizer) {
        let cgAffineTransform = CGAffineTransform()
        sender.view?.transform = cgAffineTransform.rotated(by: sender.rotation)
        sender.rotation = 0
//        guard rotationRecognizer.view != nil else { return }
//        if rotationRecognizer.state == .began || rotationRecognizer.state == .changed {
//            rotationRecognizer.view?.transform = rotationRecognizer.view!.transform.rotated(by: rotationRecognizer.rotation)
//            rotationRecognizer.rotation = 0
//        }
       // self.view.bringSubview(toFront: circleSegmentView)
    }
}


