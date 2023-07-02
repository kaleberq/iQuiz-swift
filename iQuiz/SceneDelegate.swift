//
//  SceneDelegate.swift
//  iQuiz
//
//  Created by Mac on 01/07/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            
            let splashViewController = UIViewController()
            splashViewController.view.backgroundColor = UIColor.white // Define a cor de fundo da splash screen
            
            let splashImage = UIImageView(frame: splashViewController.view.bounds)
            splashImage.image = UIImage(named: "SplashScreen") // Substitua pelo nome do conjunto de imagens
            splashImage.contentMode = .scaleAspectFill
            splashImage.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            splashViewController.view.addSubview(splashImage)
            
            window.rootViewController = splashViewController
            self.window = window
            window.makeKeyAndVisible()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Tempo em segundos que a splash screen será exibida (neste exemplo, 2 segundos)
                // Continue para a tela inicial do aplicativo
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil) // Substitua pelo nome do seu storyboard principal
                let mainViewController = mainStoryboard.instantiateInitialViewController()
                window.rootViewController = mainViewController
            }
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

