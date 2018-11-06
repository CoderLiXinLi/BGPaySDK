//
//  AppDelegate.swift
//  BGPaySDK
//
//  Created by CoderLiXinLi on 10/29/2018.
//  Copyright (c) 2018 CoderLiXinLi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        if url.host == "BigoClient" {
            //TODO:此处处理回调结果
            print("此处处理回调结果")
        }
        return true
    }

}

