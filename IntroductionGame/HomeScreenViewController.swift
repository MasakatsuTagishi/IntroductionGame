//
//  ViewController.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/05/31.
//

import UIKit

class HomeScreenViewController: UIViewController {

    override func loadView() {
        view = R.nib.homeScreenView(owner: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func toIntroductionVCButton(_ sender: Any) {
        self.performSegue(withIdentifier: R.segue.homeScreenViewController.toIntroductionVC, sender: nil)
    }

    @IBAction func toDescriptionVCButton(_ sender: Any) {
        self.performSegue(withIdentifier: R.segue.homeScreenViewController.toDescriptionVC, sender: nil)
    }
}
