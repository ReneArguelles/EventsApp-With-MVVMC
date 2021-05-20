//
//  EventDetailCoordinator.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 20/05/21.
//

import UIKit
import CoreData

final class EventDetailCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    private let eventId: NSManagedObjectID
    var parentCoordinator: EventListCoordinator?
    
    init(eventId: NSManagedObjectID, navigationController: UINavigationController) {
        self.eventId = eventId
        self.navigationController = navigationController
    }
    
    func start() {
        let eventDetailViewController: EventDetailViewController = .instantiate()
        let eventDetailViewModel = EventDetailViewModel(eventId: eventId)
        eventDetailViewModel.coordinator = self
        eventDetailViewController.viewModel = eventDetailViewModel
        navigationController.pushViewController(eventDetailViewController, animated: true)
    }
    
    func didFinish() {
        parentCoordinator?.childDidFinish(self)
    }
}
