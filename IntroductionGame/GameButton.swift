//
//  GameButtonLabel.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/06/03.
//

import Foundation

protocol ChangeTextDelegate: AnyObject {
    func didchangeText()
}

class GameButton {

    weak var delegate: ChangeTextDelegate?

    private(set) var count: Int = 0
    private(set) var text: ButtonText = .play

    private func countUp() {
        count += 1
    }

    func changeText() {
        if count % 2 == 1 {
            text = .play
            countUp()
        } else {
            text = .stop
            print(text)
            countUp()
        }
        notify()
    }

    private func notify() {
        delegate?.didchangeText()
    }

}

enum ButtonText: String {
    case play = "スタート"
    case `stop` = "ストップ"
}
