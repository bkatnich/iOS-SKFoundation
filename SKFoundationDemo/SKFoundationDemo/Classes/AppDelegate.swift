//
//  AppDelegate.swift
//  SKFoundationDemo
//
//  Created by Britton Katnich on 2018-02-03.
//  Copyright © 2018 SandKatt Solutions Inc. All rights reserved.
//

import UIKit
import SKFoundation


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    // MARK: Properties
    
    var window: UIWindow?


    // MARK: Lifecycle
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        //
        // Start the SKFoundation.
        //
        // This initializes various commonly used services such as logging, network configuration,
        // finding ContentDataSources, etc.
        //
        SKFoundation.start()
        
        return true
    }


    func applicationDidReceiveMemoryWarning(_ application: UIApplication)
    {
        log.warning("called")
    }
}

