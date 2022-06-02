//
//  IntroductionViewController.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/05/31.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet private weak var questionView: UIView! {
        didSet {
            questionView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            questionView.layer.shadowColor = UIColor.gray.cgColor
            questionView.layer.shadowOpacity = 1.0
            questionView.layer.shadowRadius = 8
            questionView.layer.cornerRadius = 5
        }
    }

    @IBOutlet private weak var gameButton: UIButton!

    override func loadView() {
        view = R.nib.introductionViewController(owner: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pressedGameButton(_ sender: Any) {

    }

}
