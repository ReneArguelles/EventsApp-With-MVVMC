//
//  EventListViewController.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 13/05/21.
//

import UIKit

class EventListViewController: UIViewController {
    
    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "EventListViewController") as! EventListViewController
        return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
