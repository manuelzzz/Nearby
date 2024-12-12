//
//  NearbyFlowController.swift
//  Nearby
//
//  Created by Manuel Santos Souza on 12/12/24.
//

import Foundation
import UIKit

class NearbyFlowController {

    private var navigationController: UINavigationController?

    init() {}

    func start() -> UINavigationController? {
        let contentView = SplashView()
        let startViewController = SplashViewController(contentView: contentView)
        self.navigationController = UINavigationController(rootViewController: startViewController)

        return navigationController
    }

}
