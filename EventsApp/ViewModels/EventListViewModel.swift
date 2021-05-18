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
    var onUpdate = {}
    
    enum Cell {
        case event(EventCellViewModel)
    }
    
    private(set) var cells: [Cell] = []
//    private let coreDataManager: CoreDataManager
//    
//    init(coreDataManager: CoreDataManager) {
//        self.coreDataManager = coreDataManager
//    }
    
    func viewDidLoad() {
        cells = [
            .event(EventCellViewModel()),
            .event(EventCellViewModel()),
        ]
        onUpdate()
    }
    
    func tappedAddEvent() {
        coordinator?.startAddEvent()
    }
    
    func numberOfRows() -> Int {
        return cells.count
    }
    
    func cell(at indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
}
