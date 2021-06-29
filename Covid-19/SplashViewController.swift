//
//  SplashViewController.swift
//  Covid-19
//
//  Created by Chu Du on 27/06/2021.
//

import UIKit

class SplashViewController: UIViewController {
    
    // khởi tạo các đối tượng controls
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1)
        return view
    }()
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "y-te")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let covidLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "COVID-19"
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        return label
    }()
    
    let bookingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Test booking app"
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    var timer:Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Add subviews
        
        self.view.addSubview(containerView)
        containerView.addSubview(photoImageView)
        containerView.addSubview(covidLabel)
        containerView.addSubview(bookingLabel)
        
        // MARK: Auto Layout
        setupLayout()
        
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)

    }
    
    func setupLayout() {
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        photoImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        photoImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -150).isActive = true
        photoImageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        photoImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        covidLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        covidLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 30).isActive = true
        
        bookingLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        bookingLabel.topAnchor.constraint(equalTo: covidLabel.bottomAnchor, constant: 30).isActive = true
    }
    
    @objc func runLoop() {
        let loginVC = LoginViewController()
        
        loginVC.modalPresentationStyle = .fullScreen
        
        self.present(loginVC, animated: true, completion: nil)
    }


}

