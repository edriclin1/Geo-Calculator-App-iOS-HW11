//
//  AppDelegate.swift
//  Geo Calculator App
//
//  Created by Edric Lin on 5/17/18.
//  Created by Dimitri Haring on 5/17/18.
//
//  Copyright © 2018 GVSU. All rights reserved.
//

import UIKit

import GooglePlaces
let GOOGLE_PLACES_API_KEY = "AIzaSyB1qjTlIEp5HwrReZr13vVc1o2buIH-1I0"
//let GOOGLE_PLACES_API_KEY = "AIzaSyDer5rk32qrA8ek2Oiu0wkDwjd3-LRnbu4"

import Firebase

let BACKGROUND_COLOR = UIColor.init(red: 0.000, green: 0.369, blue: 0.420, alpha: 1.00) // Blueish
let FOREGROUND_COLOR = UIColor.init(red: 0.937, green: 0.820, blue: 0.576, alpha: 1.0) // Tannish

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // make the status bar more readable against darker background.
        application.statusBarStyle = UIStatusBarStyle.lightContent
        
        // change nav bar style
        let navAppearance = UINavigationBar.appearance()
        navAppearance.barTintColor = BACKGROUND_COLOR
        navAppearance.tintColor = FOREGROUND_COLOR
        navAppearance.isTranslucent = false
        navAppearance.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
        
        // google places api
        GMSPlacesClient.provideAPIKey(GOOGLE_PLACES_API_KEY)
        
        // set up firebase
        FirebaseApp.configure()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

