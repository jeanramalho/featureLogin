//
//  SceneDelegate.swift
//  featureLogin
//
//  Created by Jean Ramalho on 09/01/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    //cria a variavel que receberá a instancia do flow controller
    var flowController: LoginFlowController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // da o nome windowScene e guarda na memoria o conteudo da variavel
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // cria e inicia uma variavel que recebera as propriedades do windowScene
        let window = UIWindow(windowScene: windowScene)
        // Intancia a view de flowController
        flowController = LoginFlowController()
        //Atribui à variável de rootViewController a função start() da classe flowController que chama a primeira view do app
        let rootViewController = flowController?.start()
        
        // Atribui à propriedade rootViewController do window, ou seja a view raiz, a primeira view, a view informada no flowController
        window.rootViewController = rootViewController
        // Atribui para a variavel global window a constante window criada no escopo da função
        self.window = window
        // torna as alterações visiveis
        window.makeKeyAndVisible()
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

