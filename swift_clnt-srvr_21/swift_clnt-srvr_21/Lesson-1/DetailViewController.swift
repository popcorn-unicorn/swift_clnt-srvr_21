//
//  DetailViewController.swift
//  swift_clnt-srvr_21
//
//  Created by Olga Surgaeva on 10.08.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
   
    @IBOutlet weak var cashLabel: UILabel!
    
    @IBOutlet weak var tokenLabel: UILabel!
    
    @IBOutlet weak var userIdLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        nameLabel.text = Session.shared.name
        cashLabel.text = String(Session.shared.cash)
        tokenLabel.text = Session.token
        userIdLabel.text = String(Session.userId)
        
    }
    
}
