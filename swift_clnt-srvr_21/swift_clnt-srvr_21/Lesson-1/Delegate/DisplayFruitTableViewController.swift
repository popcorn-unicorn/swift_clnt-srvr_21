//
//  FruitListTableViewController.swift
//  swift_clnt-srvr_21
//
//  Created by Olga Surgaeva on 15.08.2021.
//

import UIKit

protocol DisplayFruitTableViewControllerDelegate: AnyObject {
    func fruitDidSelect(fruit: String)
}

class DisplayFruitTableViewController: UITableViewController {
    
    let fruits = ["Апельсин", "Банан", "Груша", "Яблоко"]

    weak var delegate: DisplayFruitTableViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = fruits[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let fruit = fruits[indexPath.row]
        //Link to firstVC
        delegate?.fruitDidSelect(fruit: fruit)
        
        navigationController?.popViewController(animated: true)
    }

}
