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
    //cria a variavel do tipo do protocolo para ter acesso ao metodo que chama a proxima tela
    let coordinator: LoginCoordinatorProtocol?
    //inicia a classe
    init(contentView: SplashView, coordinator: LoginCoordinatorProtocol) {
        self.contentView = contentView
        self.coordinator = coordinator
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
        //chama a função de timer
        startTimer()
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
    
    //função que irá chamar o metódo que chama a proxima tela
    private func startTimer(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.coordinator?.showHomeView()
        }
    }
}
