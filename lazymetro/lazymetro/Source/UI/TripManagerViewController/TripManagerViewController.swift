//
//  TripManagerViewController.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/14/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit
import IDPRootViewGettable

class TripManagerViewController: UIViewController, RootViewGettable {
    
    typealias RootViewType = TripManagerView

    override func viewDidLoad() {
        super.viewDidLoad()

        print(self.rootView?.metroMapImageView?.bounds ?? "")
    }
    
    // MARK: - Private methods
    
    private func prepareTabBar() {

    }
    
}
