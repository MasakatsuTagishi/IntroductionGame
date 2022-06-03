//
//  IntroductionViewController.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/05/31.
//

import UIKit

class IntroductionViewController: UIViewController {

    private let gameButton = GameButtonText()
    private let gameLabel = GameLabel()

    @IBOutlet private weak var questionView: UIView! {
        didSet {
            questionView.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
            questionView.layer.shadowColor = UIColor.gray.cgColor
            questionView.layer.shadowOpacity = 0.6
            questionView.layer.shadowRadius = 20
            questionView.layer.cornerRadius = 10
        }
    }

    @IBOutlet private weak var gameView: UIView!
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var button: UIButton!

    override func loadView() {
        view = R.nib.introductionViewController(owner: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGameLabel()
        setupButtonLabel()
        self.navigationItem.hidesBackButton = true
    }

    override func viewWillAppear(_ animated: Bool) {
        resetButtonLabel()
        resetGameLabel()
    }

    @IBAction private func dismissButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @IBAction private func pressedGameButton(_ sender: Any) {
        changeButtonLabel()
        changeGameLabel()
        viewAnimation()
    }

    @IBAction func toAdditionGameTextVCButton(_ sender: Any) {
        self.performSegue(withIdentifier: R.segue.introductionViewController.toAdditionGameTextVC, sender: nil)
    }

    private func viewAnimation() {
        UIView.transition(with: gameView, duration: 1.0, options: [.transitionFlipFromLeft], animations: nil, completion: nil)
    }

    private func changeButtonLabel() {
        button.setTitle(gameButton.changeText(), for: .normal)
    }

    private func changeGameLabel() {
        label.text = gameLabel.randomLabel()
    }

    private func resetGameLabel() {
        label.text = gameLabel.resetLabel()
    }

    private func setupButtonLabel() {
        button.setTitle(gameButton.text.rawValue, for: .normal)
    }

    private func resetButtonLabel() {
        button.setTitle(gameButton.resetText(), for: .normal)
    }

    private func setupGameLabel() {
        label.text = gameLabel.startGameLabel
    }

}
