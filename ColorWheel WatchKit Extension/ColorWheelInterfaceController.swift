//
//  ColorWheelInterfaceController.swift
//  ColorWheel WatchKit Extension
//
//  Created by Katherine Owens on 2/11/18.
//  Copyright © 2018 Katherine Owens. All rights reserved.
//

import WatchKit
import Foundation

class ColorWheelInterfaceController: WKInterfaceController {
    @IBOutlet weak var circleGroup: WKInterfaceGroup!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        setUpCircle()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    func setUpCircle() {
        circleGroup?.setBackgroundColor(UIColor.red)
        circleGroup?.setCornerRadius(50.0)
        circleGroup?.setHidden(false)
    }
}
