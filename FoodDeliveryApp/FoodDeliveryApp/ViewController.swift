//
//  ViewController.swift
//  FoodDeliveryApp
//
//  Created by lukoom on 25.05.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello world"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .white 
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20),
        ])
        
        
    }

}

