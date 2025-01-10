//
//  LoginFlowController.swift
//  featureLogin
//
//  Created by Jean Ramalho on 09/01/25.
//
import Foundation
import UIKit

protocol LoginCoordinatorProtocol: AnyObject {
    func showHomeView()
}

class LoginFlowController: LoginCoordinatorProtocol {
    //Cria variavel que irá receber a view incial do e app
    private var navigationController: UINavigationController?
    
    //função que inicia a classe
    public init(){
        
    }
    
    func start() -> UINavigationController {
        let contentView = SplashView()
        // constante que recebe a instancia da view inicial
        let startViewController = SplashViewController(contentView: contentView, coordinator: self)
        // atribui a view inicial para o controle de navegação
        self.navigationController = UINavigationController(rootViewController: startViewController)
        // retorna o controle de navegação
        return navigationController ?? UINavigationController()
    }
    
    // função que vai chamar a view que será exibida após a splashScreen
    func showHomeView(){
        //constante que recebe a instancia da view desejada
        let contentView = LoginView()
        // atribui a view desejada para a viewController
        let homeView = LoginViewController(contentView: contentView)
        // atribui a view dessejada para o controle de navegação
        self.navigationController?.setViewControllers([homeView], animated: true)
    }
}
