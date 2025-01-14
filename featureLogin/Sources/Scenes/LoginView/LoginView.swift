//
//  LoginView.swift
//  featureLogin
//
//  Created by Jean Ramalho on 10/01/25.
//
import Foundation
import UIKit

class LoginView: UIView {
    
    lazy var viewLogin: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Rubik-Bold", size: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Rubik-Bold", size: 14)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 4
        textField.placeholder = "Digite seu email"
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 4
        textField.placeholder = "Digite sua senha"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = Colors.navyBlue
        button.tintColor = .white
        button.layer.cornerRadius = 6
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.backgroundColor = .white
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        self.addSubview(viewLogin)
        
//        viewLogin.addSubview(logoImageView)
//        viewLogin.addSubview(emailLabel)
//        viewLogin.addSubview(emailTextField)
//        viewLogin.addSubview(passwordLabel)
//        viewLogin.addSubview(passwordTextField)
//        viewLogin.addSubview(loginButton)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            viewLogin.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            viewLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            viewLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            viewLogin.heightAnchor.constraint(equalToConstant: 300),
            
            
        ])
    }
}
