//
//  Wizard01ViewController.swift
//  Covid-19
//
//  Created by Chu Du on 27/06/2021.
//

import UIKit

class Wizard01ViewController: UIViewController {
    
    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.53, green: 0.81, blue: 0.65, alpha: 0.5)
        return view
    }()
    
    let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        return view
    }()
    
    let menuImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "menu")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let avatarImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "avatar")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.text = "What are you looking for -"
        label.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 30
        return stackView
    }()
    
    let shadowView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 6
        view.layer.shadowOpacity = 0.2
        
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(topView)
        self.view.addSubview(bottomView)
        topView.addSubview(menuImage)
        topView.addSubview(avatarImage)
        topView.addSubview(titleLabel)
        
        bottomView.addSubview(stackView)
                
        stackView.addArrangedSubview(smallView("COVID-19 Test Request"))
        stackView.addArrangedSubview(smallView("COVID-19 Prevention"))
        stackView.addArrangedSubview(smallView("Important numbers"))
        stackView.addArrangedSubview(smallView("Support"))
                                     
        setupLayout()
    }

    func setupLayout() {
        topView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        topView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
        
        bottomView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7).isActive = true
        
        menuImage.topAnchor.constraint(equalTo: topView.topAnchor, constant: 60).isActive = true
        menuImage.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 30).isActive = true
        menuImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        menuImage.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        avatarImage.topAnchor.constraint(equalTo: topView.topAnchor, constant: 60).isActive = true
        avatarImage.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -30).isActive = true
        avatarImage.widthAnchor.constraint(equalToConstant: 46).isActive = true
        avatarImage.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
        titleLabel.centerYAnchor.constraint(equalTo: topView.centerYAnchor, constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 30).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 281.8).isActive = true
        
        stackView.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor, constant: -40).isActive = true
        stackView.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.87).isActive = true
        stackView.heightAnchor.constraint(equalTo: bottomView.heightAnchor, multiplier: 0.77).isActive = true
    }
    
    func createLabel(_ text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = UIColor(red: 0.25, green: 0.38, blue: 0.45, alpha: 1.00)
        return label
    }
    
    func smallView(_ text: String) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        let circleView = UIView()
        circleView.translatesAutoresizingMaskIntoConstraints = false
        circleView.frame = CGRect(x: 0, y: 0, width: 107, height: 107)
        circleView.layer.cornerRadius = circleView.bounds.height/2
        circleView.backgroundColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        
        circleView.center.x = view.bounds.minX
        circleView.center.y = view.bounds.minY
        
        view.addSubview(circleView)
        
        circleView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -(circleView.frame.height/2)).isActive = true
        circleView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: circleView.frame.height/2).isActive = true
        circleView.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(circleView.frame.height/2)).isActive = true
        circleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: circleView.frame.height/2).isActive = true
        
        view.clipsToBounds = true
        
        let myLabel = createLabel(text)
        
        view.addSubview(myLabel)
        
        myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        return view
    }
    
}
