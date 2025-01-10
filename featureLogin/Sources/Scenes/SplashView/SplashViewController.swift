//
//  SplashViewController.swift
//  featureLogin
//
//  Created by Jean Ramalho on 09/01/25.
//
import Foundation
import UIKit

class SplashViewController: UIViewController {
    // cria a variavel que vai receber a view de conteudo
    let contentView: SplashView
    let coordinator: LoginFlowController
    //inicia a classe
    init(contentView: SplashView) {
        self.contentView = contentView
        self.coordinator = LoginFlowController()
        super.init(nibName: nil, bundle: nil)
    }
    
    //função gerada automáticamente para corrigir o fato de estarmos usando viewCoode e não storyboard
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // função do ciclo de vida do app
    override func viewDidLoad() {
        super.viewDidLoad()
        //chama função de configuração do app
        setup()
    }
    // função que configura a classe
    private func setup(){
        //coloca o conteudo da contentView dentro da viewController
        self.view.addSubview(contentView)
        
        //chama a função de configuração das constraints
        setupConstraints()
    }
    
    //acerta o conteudo da contentView em toda a tela
    private func setupConstraints(){
           
           contentView.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               contentView.topAnchor.constraint(equalTo: view.topAnchor),
               contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
               contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
               contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
           ])
           
       }
    
    private func startTimer(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.coordinator.showHomeView()
        }
    }
}
