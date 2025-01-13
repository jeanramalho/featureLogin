//
//  SplashView.swift
//  featureLogin
//
//  Created by Jean Ramalho on 09/01/25.
//
import Foundation
import UIKit

class SplashView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Meu Portifólio"
        label.font = UIFont(name: "Rubik-Bold", size: 16)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.backgroundColor = .blue
        
        setHierarchy()
        setConstrainsts()
    }
    
    private func setHierarchy(){
        addSubview(logoImageView)
        addSubview(titleLabel)
    }
    
    private func setConstrainsts(){
        NSLayoutConstraint.activate([
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 12),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            
        ])
    }
}
