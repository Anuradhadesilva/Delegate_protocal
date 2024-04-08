//
//  productSelectVC.swift
//  Delegate_protocal
//
//  Created by Anuradha Desilva on 08/04/2024.
//

import UIKit
protocol productSelectionDelegate {
    func didSelectProduct(name : String, imageName: String)
}

class productSelectVC: UIViewController {

    var delegate : productSelectionDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()

        // Do any additional setup after loading the view.
    }
    @objc func tapIphoneButton(){
        dismiss(animated: true)
        delegate?.didSelectProduct(name: "IPHONE 15", imageName: "i15")
    }
    @objc func tapIpadButton(){
        dismiss(animated: true)
        delegate?.didSelectProduct(name: "Ipad Pro", imageName: "ipadPro")
    }
    @objc func tapMacButton(){
        dismiss(animated: true)
        delegate?.didSelectProduct(name: "MacBook pro", imageName: "macPro")
    }
    let iPhoneButton:UIButton = {
        let button = UIButton()
        button.configuration = .tinted()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration?.title = "iPhone"
        button.configuration?.image = UIImage(systemName: "iphone")
        button.configuration?.imagePadding = 8
       
        return button
    }()
    let iPadButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .tinted()
        button.configuration?.title = "iPad"
        button.configuration?.image = UIImage(systemName: "ipad")
        button.configuration?.imagePadding = 8
        return button
    }()
    let macBookButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .tinted()
        button.configuration?.title = "MacBook Pro"
        button.configuration?.image = UIImage(systemName: "laptopcomputer")
        button.configuration?.imagePadding = 8
        return button
    }()
    
    private func configureUI(){
        view.addSubview(iPhoneButton)
        view.addSubview(iPadButton)
        view.addSubview(macBookButton)
        view.backgroundColor = .systemBackground
        
        iPadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        iPadButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        iPadButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        iPadButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        iPhoneButton.bottomAnchor.constraint(equalTo: iPadButton.topAnchor, constant: -20).isActive = true
        iPhoneButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        iPhoneButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        iPhoneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        macBookButton.topAnchor.constraint(equalTo: iPadButton.bottomAnchor, constant: 20).isActive = true
        macBookButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        macBookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        macBookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        iPhoneButton.addTarget(self, action: #selector(tapIphoneButton), for: .touchUpInside)
        iPadButton.addTarget(self, action: #selector(tapIpadButton), for: .touchUpInside)
        macBookButton.addTarget(self, action: #selector(tapMacButton), for: .touchUpInside)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
