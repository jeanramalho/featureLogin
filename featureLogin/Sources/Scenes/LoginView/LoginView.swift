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
        label.text = "Email:"
        return label
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Rubik-Bold", size: 14)
        label.text = "Senha:"
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
        button.tintColor = Colors.navyBlue
        button.layer.cornerRadius = 6
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
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
        
        viewLogin.addSubview(logoImageView)
        viewLogin.addSubview(emailLabel)
        viewLogin.addSubview(emailTextField)
        viewLogin.addSubview(passwordLabel)
        viewLogin.addSubview(passwordTextField)
        viewLogin.addSubview(loginButton)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            viewLogin.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            viewLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            viewLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            viewLogin.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5),
            
            logoImageView.topAnchor.constraint(equalTo: viewLogin.topAnchor),
            logoImageView.centerXAnchor.constraint(equalTo: viewLogin.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 92),
            logoImageView.widthAnchor.constraint(equalToConstant: 92),
            
            emailLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 16),
            emailLabel.leadingAnchor.constraint(equalTo: viewLogin.leadingAnchor, constant: 8),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leadingAnchor.constraint(equalTo: viewLogin.leadingAnchor, constant: 8),
            emailTextField.trailingAnchor.constraint(equalTo: viewLogin.trailingAnchor, constant: -8),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordLabel.leadingAnchor.constraint(equalTo: viewLogin.leadingAnchor, constant: 8),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: viewLogin.leadingAnchor, constant: 8),
            passwordTextField.trailingAnchor.constraint(equalTo: viewLogin.trailingAnchor, constant: -8),
            
            loginButton.bottomAnchor.constraint(equalTo: viewLogin.bottomAnchor, constant: 16),
            loginButton.leadingAnchor.constraint(equalTo: viewLogin.leadingAnchor, constant: 8),
            loginButton.trailingAnchor.constraint(equalTo: viewLogin.trailingAnchor, constant: -8),
            loginButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}
