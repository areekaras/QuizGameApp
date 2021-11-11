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
        let viewController = ResultViewController(summary: "You got 1/2 correct!", answers: [
                                                    PresentableAnswer(question: "Question? Question? Question? Question? Question? Question? Question? Question? Question? Question?  Question? Question? Question? Question? End", answer: "Yeah! Yeah! Yeah! Yeah! Yeah!", wrongAnswer: nil),
                                                    PresentableAnswer(question: "Another Question?", answer: "Hell yeah!", wrongAnswer: "Hell no!")
        ])
        window.rootViewController = viewController
        self.window = window
        window.makeKeyAndVisible()
    }

}

