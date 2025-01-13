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
        return label
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
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
        
    }
    
    private func setConstrainsts(){
        
    }
}
