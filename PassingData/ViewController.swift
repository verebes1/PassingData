//
//  ViewController.swift
//  PassingData
//
//  Created by verebes on 30/10/2019.
//  Copyright © 2019 David V. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let persons = ["Robert", "Peter", "Dave"]
    var selectedPerson = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBSegueAction
    private func showPerson(coder: NSCoder, sender: Any?, segueIdentifier: String?)
        -> PersonViewController? {
        return PersonViewController(coder: coder, personDetails: persons[selectedPerson])
    }
    
    
    //MARK:- TableView Methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        cell.textLabel?.text = persons[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPerson = indexPath.row
        performSegue(withIdentifier: "ShowPerson", sender: self)
    }
}

