//
//  swiftui_viper_rxswiftApp.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/09.
//

import SwiftUI

@main
struct swiftui_viper_rxswiftApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            // SceneDelegate.swiftの処理を書く
            // 最初に表示したい画面を書く
            let presenter = SamplePagePresenter()
            let view = SamplePageView(presenter: presenter)
            let interactor = SamplePageInteractor(presenter: presenter)
            let router = SamplePageRouter()
            presenter.lateInit(view: view, interactor: interactor, router: router)
            appDelegate.presenter = presenter
            return appDelegate.presenter.view!.showSamplePage()
        }
    }
}

// AppDelegate.swiftの処理を書く
class AppDelegate: UIResponder, UIApplicationDelegate {
    // 表示している画面のPresenterを保持する
    var presenter: Presenter = SamplePagePresenter()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        return true
    }
}
