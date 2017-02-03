//
//  FriendListViewController.swift
//  FriendBook
//
//  Created by Sumukha on 11/10/15.
//  Copyright © 2015 SKP. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    let myBuddies = ["Ranjitha", "Keerthi", "Sushanth", "Prayank", "Tendulkar"]
    
    var chosenBuddy = "ABC"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myBuddies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()
        
        cell.textLabel!.text = myBuddies[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.chosenBuddy = myBuddies[indexPath.row]
        
        self.performSegue(withIdentifier: "FriendListtoFriendDataSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dataViewController = segue.destination as! FriendDataViewController
        dataViewController.name = self.chosenBuddy
        
        if self.chosenBuddy == "ABC" {
            dataViewController.birthday = "8th of November"
            dataViewController.phone = "(311) 710-1178"
        } else if self.chosenBuddy == "Sush" {
            dataViewController.birthday = "22nd of October"
            dataViewController.phone = "(414) 712-0226"
        } else if self.chosenBuddy == "Pray" {
            dataViewController.birthday = "10th of October"
            dataViewController.phone = "(301) 722-7222"
        } else if self.chosenBuddy == "Tendulkar" {
            dataViewController.birthday = "24th of April"
            dataViewController.phone = "(91) 98450-12345"
        }
        
    }

}
