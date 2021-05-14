//
//  TitleSubtitleCellViewModel.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 14/05/21.
//

import Foundation

final class TitleSubtitleCellViewModel {
    let title: String
    private(set) var subtitle: String
    let placeholder: String
    
    init(title: String, subtitle: String, placeholder: String) {
        self.title = title
        self.subtitle = subtitle
        self.placeholder = placeholder
    }
}
