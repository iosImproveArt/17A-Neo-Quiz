//
//  Neo_QuizApp.swift
//  Neo-Quiz
//
//  Created by Improve on 22.11.2024.
//

import SwiftUI

@main
struct Neo_QuizAppNQ: App {
    var ehngfjmr = "rfc3"
    var hbnegvcfjmk = 35
    func ghtrfjk() -> String {
        return "uhnefrijmko"
    }
    func rj4nufm() {
        print("gnmfr")
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentViewNQ()
                .preferredColorScheme(.dark)
        }
    }
}



class AppDelegate: UIResponder, UIApplicationDelegate {

    static var orientationLock = UIInterfaceOrientationMask.all

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
}
