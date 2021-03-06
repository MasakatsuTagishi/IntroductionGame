//
//  GameLabel.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/06/03.
//

import Foundation

class GameLabel {

    let startGameLabel: String = "スタートボタンを\n押してください"

    static var gameLabel: [String?] = [
        "好きな食べ物は何ですか",
        "好きな教科は何ですか",
        "好きなスポーツは何ですか"
    ]

    func randomLabel() -> String {
        let label = GameLabel.gameLabel.randomElement() ?? ""
        return label ?? ""
    }

    func resetLabel() -> String {
        let label = startGameLabel
        return label
    }

    func appendLabel(label: String) {
        GameLabel.gameLabel.append(label)
    }

    func removeLabel(at index: Int) {
        GameLabel.gameLabel.remove(at: index)
    }

    func alertDisplay(completion: @escaping () -> Void) {
        if GameLabel.gameLabel.isEmpty {
            completion()
        }
    }

}
