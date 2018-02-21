//
//  AppDelegate.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/14/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        let controller = UINavigationController(rootViewController: TripManagerViewController())
        controller.view = window.subviews[0]
        window.rootViewController = controller
        window.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }
    
//    private func prepareTabBarController() -> BATabBarController {
//        let tripManagerViewController = TripManagerViewController()
//        let mapViewController = MapViewController()
//        let settingsViewController = SettingsViewController()
//        let timerViewController = TimerViewViewController()
//
//        let tripTabBarItem = BATabBarItem(image: UIImage(named: "icon1_unselected"),
//                                          selectedImage: UIImage(named: "icon1_selected"))
//        let mapTabBarItem = BATabBarItem(image: UIImage(named: "icon1_unselected"),
//                                          selectedImage: UIImage(named: "icon1_selected"))
//        let settingsTabBarItem = BATabBarItem(image: UIImage(named: "icon2_unselected"),
//                                          selectedImage: UIImage(named: "icon2_selected"))
//        let timerTabBarItem = BATabBarItem(image: UIImage(named: "icon1_unselected"),
//                                          selectedImage: UIImage(named: "icon1_selected"))
//
//        let controller = BATabBarController()
//        controller.viewControllers = [tripManagerViewController,
//                                      mapViewController,
//                                      settingsViewController,
//                                      timerViewController]
//        controller.tabBarItems = [tripTabBarItem!, mapTabBarItem!, settingsTabBarItem!, timerTabBarItem!]
//
//        return controller
//    }
}
