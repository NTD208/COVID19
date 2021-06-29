//
//  RegisterViewController.swift
//  Covid-19
//
//  Created by Chu Du on 27/06/2021.
//

import UIKit

class RegisterViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1)
        return view
    }()
    
    let registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "R E G I S T E R"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    
    let mobileLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mobie Number"
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let mobileTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 8
        textField.backgroundColor = .white
        textField.textColor = .black
        return textField
    }()
    
    let aadhaarLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Aadhaar Number"
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let aadhaarTextField: UITextField = {
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
        label.text = "New Password"
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 8
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let repasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Confirm Password"
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let repasswordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 8
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        button.layer.cornerRadius = 8
        return button
    }()
    
    let stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .fillEqually
        view.alignment = .fill
        view.spacing = 50
        return view
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText = NSAttributedString(string: "Have account? Log In", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(containerView)
        containerView.addSubview(registerLabel)
        containerView.addSubview(stackView)
        containerView.addSubview(mobileLabel)
        containerView.addSubview(aadhaarLabel)
        containerView.addSubview(passwordLabel)
        containerView.addSubview(repasswordLabel)
        
        setupInfoLabel()
        containerView.addSubview(infoLabel)
        
        loginLabel.isUserInteractionEnabled = true
        let labelTapGesture = UITapGestureRecognizer(target: self, action: #selector(onPressLogin))
        loginLabel.addGestureRecognizer(labelTapGesture)
        containerView.addSubview(loginLabel)
        
        stackView.addArrangedSubview(mobileTextField)
        stackView.addArrangedSubview(aadhaarTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(repasswordTextField)
        
        registerButton.addTarget(self, action: #selector(onPressRegister), for: .touchUpInside)
        stackView.addArrangedSubview(registerButton)
        
        setupLayout()
        
    }
    
    func setupLayout() {
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        registerLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        registerLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
        
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
        stackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        
        mobileLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        mobileLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -10).isActive = true
        
        aadhaarLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        aadhaarLabel.bottomAnchor.constraint(equalTo: aadhaarTextField.topAnchor, constant: -10).isActive = true
        
        passwordLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -10).isActive = true
        
        repasswordLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        repasswordLabel.bottomAnchor.constraint(equalTo: repasswordTextField.topAnchor, constant: -10).isActive = true
        
        infoLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        infoLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30).isActive = true
        infoLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.5).isActive = true
        
        loginLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        loginLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -60).isActive = true
    }

    @objc func onPressLogin() {
        self.dismiss(animated: true, completion: nil)
    }

    @objc func onPressRegister() {
        let wizard01VC = Wizard01ViewController()
        
        wizard01VC.modalPresentationStyle = .fullScreen
        
        self.present(wizard01VC, animated: true, completion: nil)
    }
    
    @objc func tappedOnLabel(_ gesture: UITapGestureRecognizer) {
        guard let text = self.infoLabel.text else { return }
        let conditionsRange = (text as NSString).range(of: "Terms & Policies")
        
        if gesture.didTapAttributedTextInLabel(label: self.infoLabel, inRange: conditionsRange) {
            print("user tapped on Terms & Policies")
        }
    }
    
    func getAttributedString(arrayText:[String]?, arrayColors:[UIColor]?, arrayFonts:[UIFont]?) -> NSMutableAttributedString {
        let finalAttributedString = NSMutableAttributedString()
        for i in 0 ..< (arrayText?.count)! {
            var attributes: [NSAttributedString.Key : Any]?
            
            if arrayText?[i] == "Terms & Policies" {
                attributes = [NSAttributedString.Key.foregroundColor: arrayColors?[i] as Any, NSAttributedString.Key.font: arrayFonts?[i] as Any, .underlineStyle: NSUnderlineStyle.single.rawValue] as [NSAttributedString.Key : Any]
            } else {
                attributes = [NSAttributedString.Key.foregroundColor: arrayColors?[i] as Any, NSAttributedString.Key.font: arrayFonts?[i] as Any]
            }
            let attributedStr = (NSAttributedString.init(string: arrayText?[i] ?? "", attributes: attributes))
            if i != 0 {
                finalAttributedString.append(NSAttributedString.init(string: " "))
            }
            
            
            finalAttributedString.append(attributedStr)
        }
        return finalAttributedString
    }
    
    func setupInfoLabel() {
        infoLabel.numberOfLines = 0
        var textArray = [String]()
        var fontArray = [UIFont]()
        let colorArray = Array(repeating: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), count: 3)
        textArray.append("By registering, you automatically accept the")
        textArray.append("Terms & Policies")
        textArray.append("of COVID - 19 app.")
        fontArray.append(UIFont.systemFont(ofSize: 12, weight: .light))
        fontArray.append(UIFont.boldSystemFont(ofSize: 12))
        fontArray.append(UIFont.systemFont(ofSize: 12, weight: .light))
        infoLabel.attributedText = getAttributedString(arrayText: textArray, arrayColors: colorArray, arrayFonts: fontArray)
        
        infoLabel.isUserInteractionEnabled = true
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(tappedOnLabel(_ :)))
        infoLabel.addGestureRecognizer(tapgesture)
    }
}

extension UITapGestureRecognizer {
    
    func didTapAttributedTextInLabel(label: UILabel, inRange targetRange: NSRange) -> Bool {
        let layoutManager = NSLayoutManager()
        let textContainer = NSTextContainer(size: CGSize.zero)
        let textStorage = NSTextStorage(attributedString: label.attributedText!)
        
        layoutManager.addTextContainer(textContainer)
        textStorage.addLayoutManager(layoutManager)
        
        textContainer.lineFragmentPadding = 0.0
        textContainer.lineBreakMode = NSLineBreakMode.byWordWrapping
        textContainer.maximumNumberOfLines = label.numberOfLines
        let labelSize = label.bounds.size
        textContainer.size = labelSize
        
        let locationOfTouchInLabel = self.location(in: label)
        let textBoundingBox = layoutManager.usedRect(for: textContainer)
        let textContainerOffset = CGPoint(x: (labelSize.width - textBoundingBox.size.width) * 0.5 - textBoundingBox.origin.x,
                                          y: (labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y);
        let locationOfTouchInTextContainer = CGPoint(x: locationOfTouchInLabel.x - textContainerOffset.x,
                                                     y: locationOfTouchInLabel.y - textContainerOffset.y);
        var indexOfCharacter = layoutManager.characterIndex(for: locationOfTouchInTextContainer, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
        indexOfCharacter = indexOfCharacter + 4
        
        return NSLocationInRange(indexOfCharacter, targetRange)
    }
}
