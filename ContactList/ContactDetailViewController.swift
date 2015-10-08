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
    
    var contactToShowDetails: Contact!
    
    override func viewWillAppear(animated: Bool) {
        contactName.text = contactToShowDetails.name
        contactPhoneNumber.text = contactToShowDetails.phoneNumber
        contactEmailAddress.text = contactToShowDetails.email
    }
}
