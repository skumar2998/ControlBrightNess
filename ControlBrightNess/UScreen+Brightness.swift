//
//  UScreen+Brightness.swift
//  ControlBrightNess
//
//  Created by Kumar, Sunil on 25/06/18.
//  Copyright © 2018 AppScullery. All rights reserved.
//

import UIKit

extension UIScreen
{
    static func setMainBrightness(brightness: CGFloat)
    {
        guard (0...1).contains(brightness) else
        {
            print("Attempt to set the screen brightness to an invalid value: \(brightness) should be between 0 and 1 inclusive.")
            return
        }
        self.main.brightness = brightness
    }
}

