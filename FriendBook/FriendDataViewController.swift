//
//  FriendDataViewController.swift
//  FriendBook
//
//  Created by Sumukha on 11/10/15.
//  Copyright © 2015 SKP. All rights reserved.
//

import UIKit

class FriendDataViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var birthdayLabel: UILabel!
    
    @IBOutlet var phoneLabel: UILabel!
    
    var name = "Ranjitha"
    var birthday = "25th of May"
    var phone = "(361) 228-1298"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.nameLabel.text = "\(self.name) was born on:"
        self.birthdayLabel.text = self.birthday
        self.phoneLabel.text = "Phone number is:\(self.phone)"

    }

}
