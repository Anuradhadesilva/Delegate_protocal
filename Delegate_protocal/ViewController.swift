//
//  ViewController.swift
//  Delegate_protocal
//
//  Created by Anuradha Desilva on 08/04/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    let titleImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image = UIImage(named: "appleDev")
        return image
    }()
    
    let productTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Apple Product"
        label.textAlignment = .center
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 20, weight: .medium)
        return label
    }()

    let chooseButton:UIButton = {
        let button = UIButton()
        button.configuration = .tinted()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration?.title = "choose product"
        button.configuration?.image = UIImage(systemName: "apple.logo")
        button.configuration?.imagePadding = 8
        return button
    }()
    
    private func configureUI(){
        view.addSubview(titleImageView)
        view.addSubview(productTitle)
        view.addSubview(chooseButton)
        
        titleImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        titleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        titleImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        productTitle.topAnchor.constraint(equalTo: titleImageView.bottomAnchor, constant: 20).isActive = true
        productTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        chooseButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        chooseButton.widthAnchor.constraint(equalToConstant: 181).isActive = true
        chooseButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        chooseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}

