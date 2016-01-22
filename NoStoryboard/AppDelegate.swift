//
//  AppDelegate.swift
//  NoStoryboard
//
//  Created by Michal Cierniak on 1/21/16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow()
        if let window = window {
            window.rootViewController = UIViewController()
            window.backgroundColor = UIColor.whiteColor()
            window.makeKeyAndVisible()
        }
        return true
    }

}

