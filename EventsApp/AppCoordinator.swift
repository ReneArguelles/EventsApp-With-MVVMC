//
//  AppCoordinator.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 12/05/21.
//

import Foundation

protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoordinator {
    
}
