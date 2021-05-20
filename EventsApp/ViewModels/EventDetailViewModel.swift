//
//  EventDetailViewModel.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 20/05/21.
//

import CoreData
import UIKit

final class EventDetailViewModel {
    
    private let eventId: NSManagedObjectID
    private let coreDataManager: CoreDataManager
    private var event: Event?
    private let date = Date()
    var onUpdate = {}
    var coordinator: EventDetailCoordinator?
    
    var image: UIImage? {
        guard let imageData = event?.image else { return nil }
        return UIImage(data: imageData)
    }
    
    var timeRemainingViewModel: TimeRemainingViewModel? {
        guard let eventDate = event?.date,
              let timeRemainingParts = date.timeRemaining(until: eventDate)?.components(separatedBy: ",") else { return nil }
        return TimeRemainingViewModel(timeRemainingParts: timeRemainingParts, mode: .detail)
    }
    
    init(eventId: NSManagedObjectID, coreDataManager: CoreDataManager = .shared) {
        self.eventId = eventId
        self.coreDataManager = coreDataManager
    }
    
    func viewDidLoad() {
        event = coreDataManager.getEvent(eventId)
        onUpdate()
    }
    
    func viewDidDisappear() {
        coordinator?.didFinish()
    }
}
