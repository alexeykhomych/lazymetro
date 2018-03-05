//
//  TabBarViewController.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/21/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.prepareTabBarController()
    }
    
    func prepareTabBarController() {
        let tripManagerViewController = TripManagerViewController()
        let mapViewController = MapViewController()
        let settingsViewController = SettingsViewController()
        let timerViewController = TimerViewController(TimerViewModel(model: Section(), coreDataManager: CoreDataManager()))
        
        let tabBarItem1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        let tabBarItem2 = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        let tabBarItem3 = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        let tabBarItem4 = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        
        tripManagerViewController.tabBarItem = tabBarItem1
        mapViewController.tabBarItem = tabBarItem2
        settingsViewController.tabBarItem = tabBarItem3
        timerViewController.tabBarItem = tabBarItem4
        
        self.viewControllers = [tripManagerViewController,
                                      mapViewController,
                                      settingsViewController,
                                      timerViewController]
    }
}
