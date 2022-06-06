//
//  Alert.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/06/06.
//

import UIKit

protocol AlertDelegate: AnyObject {
    func present(alert: UIAlertController)
}

class Alert {

    weak var delegate: AlertDelegate?

    func errorAlert(title: String, message: String, okHandler: @escaping (UIAlertAction) -> Void) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: .default,
                handler: okHandler
            )
        )
        present(alert: alert)
    }

    func present(alert: UIAlertController) {
        delegate?.present(alert: alert)
    }
}
