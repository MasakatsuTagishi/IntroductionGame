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

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!

    override func loadView() {
        view = R.nib.additionGameTextViewController(owner: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: fileName, bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView.layer.cornerRadius = 8
    }

    @IBAction func additionButton(_ sender: Any) {
        gameLabel.appendLabel(label: textField.text ?? "")
        tableView.reloadData()
    }

    @IBAction func dismissButton(_ sender: Any) {
        self.dismiss(animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        GameLabel.gameLabel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        cell.label.text = GameLabel.gameLabel[indexPath.row]
        return cell
    }

}
