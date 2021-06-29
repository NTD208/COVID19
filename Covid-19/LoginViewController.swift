//
//  LoginViewController.swift
//  Covid-19
//
//  Created by Chu Du on 27/06/2021.
//

import UIKit

class LoginViewController: UIViewController {

    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1)
        return view
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "L O G I N"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mobie Number"
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let numberTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 8
        textField.backgroundColor = .white
        textField.textColor = .black
        return textField
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 8
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.textColor = .black
        return textField
    }()
    
    let eyeImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "eye")
        image.tintColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
        return image
    }()
    
    let forgotLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText = NSAttributedString(string: "Forgot?", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 0.8)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        button.layer.cornerRadius = 8
        return button
    }()
    
    let registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText = NSAttributedString(string: "New User? Register Here", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        return label
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 50
        return stack
    }()
    
    var isShow:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(containerView)
        containerView.addSubview(loginLabel)
        containerView.addSubview(stackView)
        containerView.addSubview(numberLabel)
        containerView.addSubview(passwordLabel)
        containerView.addSubview(forgotLabel)
        
        stackView.addArrangedSubview(numberTextField)
        stackView.addArrangedSubview(passwordTextField)
        
        loginButton.addTarget(self, action: #selector(onPressLogin), for: .touchUpInside)
        stackView.addArrangedSubview(loginButton)
        
        eyeImage.isUserInteractionEnabled = true
        let imageTapGesture = UITapGestureRecognizer(target: self, action: #selector(onPressEye))
        eyeImage.addGestureRecognizer(imageTapGesture)
        containerView.addSubview(eyeImage)

        registerLabel.isUserInteractionEnabled = true
        let labelTapGesture = UITapGestureRecognizer(target: self, action: #selector(onPressRegister))
        registerLabel.addGestureRecognizer(labelTapGesture)
        containerView.addSubview(registerLabel)
        
        setupLayout()
    }
    
    func setupLayout() {
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        loginLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        loginLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
        
        stackView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
        
        numberLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -10).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        
        passwordLabel.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -10).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        
        forgotLabel.bottomAnchor.constraint(equalTo: passwordLabel.bottomAnchor).isActive = true
        forgotLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        registerLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        registerLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 50).isActive = true
        
        eyeImage.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor, multiplier: 0.4).isActive = true
        eyeImage.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor).isActive = true
        eyeImage.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -10).isActive = true
        eyeImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    @objc func onPressRegister() {
        let registerVC = RegisterViewController()

        registerVC.modalPresentationStyle = .fullScreen

        self.present(registerVC, animated: true, completion: nil)
    }
    
    @objc func onPressEye() {
        isShow.toggle()
        if isShow {
            passwordTextField.isSecureTextEntry = false
            eyeImage.image = UIImage(systemName: "eye.slash")
        } else {
            passwordTextField.isSecureTextEntry = true
            eyeImage.image = UIImage(systemName: "eye")
        }
    }
    
    @objc func onPressLogin() {
        let wizard01VC = Wizard01ViewController()
        
        wizard01VC.modalPresentationStyle = .fullScreen
        
        self.present(wizard01VC, animated: true, completion: nil)
    }

}
