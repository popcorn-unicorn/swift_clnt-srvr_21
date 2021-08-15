//
//  ChooseFruitViewController.swift
//  swift_clnt-srvr_21
//
//  Created by Olga Surgaeva on 15.08.2021.
//

import UIKit
//FirstVC
class ChooseFruitViewController: UIViewController, DisplayFruitTableViewControllerDelegate {
    
    @IBOutlet weak var fruitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func fruitDidSelect(fruit: String) {
        
        fruitLabel.text = fruit
        
    }
    
    @IBAction func chooseFruitButton(_ sender: Any) {
        //SecondTVC
        let displayFruitTVC = DisplayFruitTableViewController()
        displayFruitTVC.delegate = self
        
        navigationController?.pushViewController(displayFruitTVC, animated: true)
    }

}
