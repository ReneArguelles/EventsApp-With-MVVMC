//
//  ImagePickerCoordinator.swift
//  EventsApp
//
//  Created by Arguelles, Rene on 16/05/21.
//

import UIKit

final class ImagePickerCoordinator: NSObject, Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    var parentCoordinator: AddEventCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        navigationController.present(imagePickerController, animated: true, completion: nil)
    }
}

extension ImagePickerCoordinator: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            parentCoordinator?.didFinishPicking(image)
        }
        parentCoordinator?.childDidFinish(self)
    }
}
