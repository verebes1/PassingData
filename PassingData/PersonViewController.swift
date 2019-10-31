//
//  PersonViewController.swift
//  PassingData
//
//  Created by verebes on 30/10/2019.
//  Copyright © 2019 David V. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    
    let personDetails: String
    
    init?(coder: NSCoder, personDetails: String) {
      self.personDetails = personDetails
      super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBOutlet weak var personLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        personLabel.text = personDetails
        title = personDetails
    }
}
