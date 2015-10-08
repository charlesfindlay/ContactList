//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Kate Owens  on 10/8/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var contactPhoneNumber: UILabel!
    @IBOutlet weak var contactEmailAddress: UILabel!
    
    var name: String!
    var phoneNumber: String!
    var emailAddress: String!
    
    override func viewWillAppear(animated: Bool) {
        contactName.text = name
        contactPhoneNumber.text = phoneNumber
        contactEmailAddress.text = emailAddress
    }
}
