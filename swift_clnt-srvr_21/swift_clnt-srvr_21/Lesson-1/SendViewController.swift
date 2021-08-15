//
//  SendViewController.swift
//  swift_clnt-srvr_21
//
//  Created by Olga Surgaeva on 10.08.2021.
//

import UIKit

class SendViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
   
    @IBOutlet weak var cashTextField: UITextField!
    
    let session = Session.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sendCashAction(_ sender: Any) {
        
        //ранний выход + разворачивание опционала
        guard let cashString = cashTextField.text, let cash = Int(cashString),
              let name = nameTextField.text
        else {
            return
        }
        
        session.name = name
        session.cash = cash
        
    }
    
}
