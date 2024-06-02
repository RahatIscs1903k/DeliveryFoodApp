//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by lukoom on 02.06.2024.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .red
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("finish")
    }
}
