//
//  AlternateIconsViewController.swift
//  NewFeatures
//
//  Created by Kyusaku Mihara on 2/2/17.
//  Copyright © 2017 epohsoft. All rights reserved.
//

import UIKit

class AlternateIconsViewController: UIViewController {

    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        let application = UIApplication.shared
        let completion = { (error: Error?) in
            if let error = error {
                NSLog("error: \(error)")
            }
        }
        switch sender.selectedSegmentIndex {
        case 0:
            application.setAlternateIconName(nil, completionHandler: completion)
        case 1:
            application.setAlternateIconName("AppIconRed", completionHandler: completion)
        case 2:
            application.setAlternateIconName("AppIconGreen", completionHandler: completion)
        case 3:
            application.setAlternateIconName("AppIconBlue", completionHandler: completion)
        default:
            break
        }
    }
}
