//
//  HalfcabApp.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct HalfcabApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var sessionService = SessionServiceImplementation()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                switch sessionService.state {
                case .loggedIn:
                    SplashScreenView()
                        .environmentObject(EShop())
                        .environmentObject(SessionServiceImplementation())
                case .loggedOut:
                    LoginView()
                }
            }
        }
    }
}
