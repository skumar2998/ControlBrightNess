//
//  ViewController.swift
//  ControlBrightNess
//
//  Created by Kumar, Sunil on 25/06/18.
//  Copyright © 2018 AppScullery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    
//    var pushButtonStatePressed = false
    @IBOutlet weak var brightNessSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentBrightNess = UIScreen.main.brightness
        brightNessSlider.value = Float(currentBrightNess)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderValueChanged(_ sender: Any) {
        
        let newBrightNess = CGFloat(self.brightNessSlider.value)
        
        UIScreen.setMainBrightness(brightness: newBrightNess)
    }

    
}

