//
//  AddEventViewModel.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 14/05/21.
//

import Foundation

final class AddEventViewModel {
    
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
}
