//
//  StoreURLOpenerViewController.swift
//  NewFeatures
//
//  Created by Kyusaku Mihara on 1/31/17.
//  Copyright © 2017 epohsoft. All rights reserved.
//

import UIKit

class StoreURLOpenerViewController: UIViewController {

    private let appID = 377717952

    @IBAction func openButtonDidTap(_ sender: Any) {
        UIApplication.shared.open(appURL(byAppID: appID), options: [:], completionHandler: nil)
    }

    @IBAction func openReviewButtonDidTap(_ sender: Any) {
        var components = URLComponents(url: appURL(byAppID: appID), resolvingAgainstBaseURL: false)
        components?.queryItems = [URLQueryItem(name: "action", value: "write-review")]
        guard let url = components?.url else { fatalError() }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }

    private func appURL(byAppID appID: Int) -> URL {
        guard let url = URL(string: "itms-apps://itunes.apple.com/app/id\(appID)") else { fatalError() }
        return url
    }
}
