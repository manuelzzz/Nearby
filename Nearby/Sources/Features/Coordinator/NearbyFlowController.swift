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

	func start() -> UINavigationController? {
		let contentView = SplashView()
		let startViewController = SplashViewController(contentView: contentView, delegate: self)
		self.navigationController = UINavigationController(rootViewController: startViewController)

		return navigationController
	}
}

extension NearbyFlowController: SplashFlowDelegate {
	func decideNavigationFlow() {
		let contentView = WelcomeView()
		let welcomeViewController = WelcomeViewController(contentView: contentView)
		welcomeViewController.flowDelegate = self
		navigationController?.pushViewController(welcomeViewController, animated: true)
	}
}

extension NearbyFlowController: WelcomeFlowDelegate {
	func goToHome() {
		let homeViewController = HomeViewController()
		navigationController?.pushViewController(homeViewController, animated: true)
	}
}
