//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by lukoom on 01.06.2024.
//

import UIKit

class AppCoordinator: Coordinator {

    override func start() {
        showOnboardingFlow()
//        showMainFlow()
    }
    
    override func finish() {
       print("AppCoordinator finish")
    }
    
}

// MARK: - Navigation methods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        let onBoardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController)
        onBoardingCoordinator.finishDelegate = self
        addChildCoordinator(onBoardingCoordinator)
        onBoardingCoordinator.start()
    }
    func showMainFlow() {
        guard let navigationController = navigationController else { return }
        
        let homeNavigationController = UINavigationController()
        let homeNavigationCoordinator = HomeCoordinator(type: .home, navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage.init(systemName: "house"), tag: 0)
        homeNavigationCoordinator.finishDelegate = self
        homeNavigationCoordinator.start()
        
        let orderNavigationContoller = UINavigationController()
        let orderNavigationCoordinator = OrderCoordinator(type: .order, navigationController: orderNavigationContoller)
        orderNavigationContoller.tabBarItem = UITabBarItem(title: "Order", image: UIImage.init(systemName: "cart"), tag: 1)
        orderNavigationCoordinator.finishDelegate = self
        orderNavigationCoordinator.start()
        
        let listNavigationContoller = UINavigationController()
        let listNavigationCoordinator = ListCoordinator(type: .list, navigationController: listNavigationContoller)
        listNavigationContoller.tabBarItem = UITabBarItem(title: "List", image: UIImage.init(systemName: "cart"), tag: 2)
        listNavigationCoordinator.finishDelegate = self
        listNavigationCoordinator.start()
        
        let profileNavigationController = UINavigationController()
        let profileNavigationCoordinator = ProfileCoordinator(type: .profile, navigationController: profileNavigationController)
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage.init(systemName: "cart"), tag: 3)
        profileNavigationCoordinator.finishDelegate = self
        profileNavigationCoordinator.start()
        
        addChildCoordinator(homeNavigationCoordinator)
        addChildCoordinator(orderNavigationCoordinator)
        addChildCoordinator(listNavigationCoordinator)
        addChildCoordinator(profileNavigationCoordinator)
        
        let tabBarControllers = [homeNavigationController, orderNavigationContoller, listNavigationContoller, profileNavigationController]
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        navigationController.pushViewController(tabBarController, animated: true)
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinator: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinator)
        
        switch childCoordinator.type {
        case .app:
            return
        default:
            navigationController?.popViewController(animated: false)
        }
    }
}
