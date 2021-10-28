//
//  SceneDelegate.swift
//  CicloDeVida
//
//  Created by Giovanni Vicentin Moratto on 28/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        print("Método: scene - didFinishlaunchingWithOptions")
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("Método: scene - sceneDidDisconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("Método: scene - applicationDidBecomeActive")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("Método: scene - applicationWillResignActive")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("Método: scene - applicationWillEnterForeground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("Método: scene - applicationDidEnterBackground")
    }


}

