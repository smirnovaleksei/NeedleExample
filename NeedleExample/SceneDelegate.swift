//
//  SceneDelegate.swift
//  NeedleExample
//
//  Created by Алексей Смирнов on 02.06.2021.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions)
    {
        guard let windowScence = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScence)
        window?.windowScene = windowScence
        
        let rootComponent = RootComponent()
        
        let rootViewController = rootComponent.viewControllerComponent.build()
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
}

