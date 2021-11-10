//
//  SceneDelegate.swift
//  QuizGameApp
//
//  Created by Shibili Areekara on 09/11/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.windowScene = windowScene
        let viewController = QuestionViewController(question: "A question?", options: ["Option 1", "Option 2"]) {
            print($0)
        }
        _ = viewController.view
        viewController.tableView.allowsMultipleSelection = false
        
        window.rootViewController = viewController
        self.window = window
        window.makeKeyAndVisible()
        
    }

}

