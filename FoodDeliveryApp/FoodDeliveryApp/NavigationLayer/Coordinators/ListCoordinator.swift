//
//  ListCoordinator.swift
//  FoodDeliveryApp
//
//  Created by lukoom on 02.06.2024.
//

import UIKit

class ListCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("finish")
    }
}
