//
//  PersonViewController.swift
//  PassingData
//
//  Created by verebes on 30/10/2019.
//  Copyright © 2019 David V. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    
    var personDetails: String?

    @IBOutlet weak var personLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let personDetails = personDetails {
            personLabel.text = personDetails
        }
    }
}
