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
            text = .stop
        }
        return text.rawValue
    }

}

enum ButtonText: String {
    case play = "スタート"
    case `stop` = "もう一度"
}
