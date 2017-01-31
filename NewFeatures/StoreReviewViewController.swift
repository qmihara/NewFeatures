//
//  StoreReviewViewController.swift
//  NewFeatures
//
//  Created by Kyusaku Mihara on 1/31/17.
//  Copyright © 2017 epohsoft. All rights reserved.
//

import UIKit
import StoreKit

class StoreReviewViewController: UIViewController {

    @IBAction func showButtonDidTap(_ sender: Any) {
        SKStoreReviewController.requestReview()
    }
}
