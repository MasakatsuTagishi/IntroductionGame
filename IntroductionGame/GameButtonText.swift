//
//  GameButtonLabel.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/06/03.
//

import Foundation

class GameButtonText {

    private(set) var text: ButtonText = .play

    func changeText() -> String {
        if text == .play {
            text = .again
        }
        return text.rawValue
    }

    func resetText() -> String {
        text = .play
        return text.rawValue
    }

}

enum ButtonText: String {
    case play = "スタート"
    case again = "もう一度"
}
