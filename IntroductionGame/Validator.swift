//
//  Validator.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/06/04.
//

import Foundation

enum ValidationResult {
    case valid
    case textIsEmpty
    case lengthInvalid(min: Int, max: Int)

    var isValid: Bool {
        switch self {
        case .valid:
            return true
        case .textIsEmpty:
            return false
        case .lengthInvalid:
            return false
        }
    }

    var errorMessage: String {
        switch self {
        case .valid:
            return ""
        case .textIsEmpty:
            return "テキストの入力がありません"
        case .lengthInvalid(let min, let max):
            return "\(min)文字以上\(max)文字以下で入力してください"
        }
    }
}

final class Validator {

    static let shared: Validator = .init()
    private init() {}

    func textCheck(text: String?, min: Int, max: Int) -> ValidationResult {

        guard let text = text, !text.isEmpty else {
            return .textIsEmpty
        }

        guard text.count >= min && text.count <= max else {
            return .lengthInvalid(min: min, max: max)
        }

        return .valid
    }

}
