# IntroductionGame
## 概要
自己紹介を楽しくするためのアプリです。  
小学校教員をしていた経験をもとに制作しました。
## アプリ仕様
https://user-images.githubusercontent.com/83049586/172316921-be4d7296-a58f-4d98-b7e5-58e69640c73b.MP4
### 環境
- IDE : Xcode 13.4.1
- Swift : Swift 5.6.1
- 開発ターゲット : iOS 15.5
### ライブラリ
- SwiftLint : 0.47.1
- R.swift : 6.1.0
### 動作
1. 質問リストをランダムで表示する。
2. 質問リストを追加する。
## ハマったポイント
- **SwiftLintとR.swiftの導入**  
可読性や保守性の向上をしたいと思い導入しました。  
SwiftLintを導入しましたが、R.swiftがルールに則っていないとエラーが多発しました。  
.gitignoreファイルに追記し管理の対象外としましたが、上手く反映されずSwiftLintのルールを緩和することでエラーを回避しました。

- **R.swiftの導入**  
今回はじめてR.swiftを使用しました。  
導入し、さっそく使おうと画面遷移のコードを打ち込みましたが、自動補完ができず苦戦しました。
再ビルドやPCの再起動を行うことで解決しました。

- **UIScrollViewのオートレイアウト**  
UIScrollViewのオートレイアウトについて、画面サイズを変更するとレイアウトが崩れることが多くありました。  
何度かオートレイアウトの制約を付け直すことで解決しました。
## 課題
- **RxSwiftの導入**  
RxSwiftを導入し、アプリを制作しようと考えましたが、完成まで時間がかかると考え断念しました。  
今後、ミニアプリを作りながら、さらにRxの理解を深めていこうと思います。

## 参考にした記事
- [realm/SwiftLint](https://github.com/realm/SwiftLint)
- [mac-cain13/R.swift](https://github.com/mac-cain13/R.swift)
- [Swiftの静的解析ツール「SwiftLint」のセットアップ方法](https://qiita.com/uhooi/items/bf888b53b4b8210108aa)
- [R.swiftのセットアップ方法(Swift5)](https://qiita.com/uhooi/items/82fbdd94bdc467a22422)
- [R.swiftとSwiftLintを導入する(cocoaPods編)](https://qiita.com/9999/items/8ab4a612ba6040bb230d)
- [Storyboardで横スクロールを作成する手順（UIScrollView & UIStackView）](https://qiita.com/datsukan/items/bbeaface43335065b80b)
- [[Swift] 文字入力バリデーションを実装する(iOS)](https://qiita.com/kudpig/items/a5ccd7c9e45e9b400101)
