//
//  AdditionGameTextViewController.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/06/03.
//

import UIKit

class AdditionGameTextViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let gameLabel = GameLabel()
    let cellIdentifier = "customCell"
    let fileName = "TableViewCell"

    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var tableView: UITableView!

    override func loadView() {
        view = R.nib.additionGameTextViewController(owner: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: fileName, bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView.layer.cornerRadius = 8
        self.navigationItem.hidesBackButton = true
    }

    @IBAction private func additionButton(_ sender: UIButton) {
        let result = Validator.shared.textCheck(text: textField.text, min: 1, max: 30)
        switch result.isValid {
        case true:
            gameLabel.appendLabel(label: textField.text ?? "")
            tableView.reloadData()
        case false:
            print(result.errorMessage)
        }

    }

    @IBAction private func dismissButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        GameLabel.gameLabel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        cell.label.text = GameLabel.gameLabel[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "質問リスト"
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            gameLabel.removeLabel(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        case .insert:
            break
        case .none:
            break
        @unknown default:
            fatalError()
        }
    }

}
