//
//  SplashView.swift
//  Nearby
//
//  Created by Manuel Santos Souza on 12/12/24.
//

import Foundation
import UIKit

class SplashView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "nearbyLogo")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false

        return image
    }()

    let backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "backgroundImage")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false

        return image
    }()

    private func setupUI() {
        setupConstraints()
    }

    private func setupConstraints() {
        addSubview(logoImageView)
        addSubview(backgroundImageView)

        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
