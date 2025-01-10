//
//  LoginFlowController.swift
//  featureLogin
//
//  Created by Jean Ramalho on 09/01/25.
//
import Foundation
import UIKit

class LoginFlowController {
    //Cria variavel que irá receber a view incial do e app
    private var navigationController: UINavigationController?
    
    //função que inicia a classe
    public init(){
        
    }
    
    func start() -> UINavigationController {
        let contentView = SplashView()
        // constante que recebe a instancia da view inicial
        let startViewController = SplashViewController(contentView: contentView)
        // atribui a view inicial para o controle de navegação
        self.navigationController = UINavigationController(rootViewController: startViewController)
        // retorna o controle de navegação
        return navigationController ?? UINavigationController()
    }
    
    func showHomeView(){
        let contentView = LoginView()
        let homeView = LoginViewController(contentView: contentView)
        self.navigationController?.setViewControllers([homeView], animated: true)
    }
}
