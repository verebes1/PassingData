//
//  NavViewController.swift
//  PassingData
//
//  Created by verebes on 30/10/2019.
//  Copyright © 2019 David V. All rights reserved.
//

import UIKit

class NavViewController: UINavigationController {

    
    var personDetails: String
    
    init?(coder: NSCoder, personDetails: String) {
      self.personDetails = personDetails
      super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = personDetails
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
