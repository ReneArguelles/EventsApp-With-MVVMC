//
//  EventListViewModel.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 14/05/21.
//

import Foundation

final class EventListViewModel {
    
    let title = "Events"
    var coordinator: EventListCoordinator?
    
    func tappedAddEvent() {
        coordinator?.startAddEvent()
    }
}
