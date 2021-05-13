//
//  EventListCoordinator.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 13/05/21.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListViewController = EventListViewController.instantiate()
        navigationController.setViewControllers([eventListViewController], animated: false)
    }
    
    deinit {
        print("EventListCoordinator was deallocated")
    }
}
