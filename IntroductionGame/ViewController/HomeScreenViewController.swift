//
//  ViewController.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/05/31.
//

import UIKit

class HomeScreenViewController: UIViewController {
    // MARK: - Lifecycle
    override func loadView() {
        view = R.nib.homeScreenView(owner: self)
    }

    // MARK: - @IBAction
    @IBAction private func toIntroductionVCButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: R.segue.homeScreenViewController.toIntroductionVC, sender: nil)
    }

    @IBAction private func toDescriptionVCButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: R.segue.homeScreenViewController.toDescriptionVC, sender: nil)
    }
}
