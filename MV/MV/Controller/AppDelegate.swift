//
//  AppDelegate.swift
//  MV
//
//  Created by 近江伸一 on 2023/05/06.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //画面の大きさ取得
        let window = UIWindow(frame: UIScreen.main.bounds)
        //navigationControllerをインスタンス
        let navigationController = UINavigationController(rootViewController: MainViewController())
        
        //navigationControllerをぶち込む
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
    
    
}
