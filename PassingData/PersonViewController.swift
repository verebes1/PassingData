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
    // var personDetails: String = "Unknown"
    // Then you just need to do a conditional check if the person is not an unknown person
    // You can have enums for that.
    // It is sensible to use optionals.

    @IBOutlet weak var personLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let personDetails = personDetails {
            personLabel.text = personDetails
        }
//        Non optional approach below:
//      if personDetails != "Unknown" {
//          personLabel.text = personDetails
//    }
    }
}
