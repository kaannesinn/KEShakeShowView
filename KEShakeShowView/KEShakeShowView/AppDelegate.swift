//
//  AppDelegate.swift
//  KEShakeShowView
//
//  Created by Kaan Esin on 25.03.2020.
//  Copyright © 2020 Kaan Esin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShakeVC") as? ShakeVC {
            window?.rootViewController = vc
        }
        window?.makeKeyAndVisible()
        return true
    }
    
}

