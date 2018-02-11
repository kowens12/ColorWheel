//
//  ViewController.swift
//  ColorWheel
//
//  Created by Katherine Owens on 2/9/18.
//  Copyright © 2018 Katherine Owens. All rights reserved.
//

import UIKit
import WatchKit
import WatchConnectivity

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
    
    //TODO: fix rotation recognizer...
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
    
    //TODO: determine how to display color arc at top of screen on watch
    //////MARK: Thoughts/Ideas/PseudoCode
    //get position of arc - store as variable, when rotation ends then determine which member of the Arc array is in the same position and display -- could do this with coordinates / position in the view
    ////kind of hacky, but could work --> make a small subview that will be below the colorwheel view....whichever member of colorwheel/arc array member covers the small invisible view would be the color to display
}


