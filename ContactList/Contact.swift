//
//  contacts.swift
//  ContactList
//
//  Created by Kate Owens  on 10/8/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

class Contact {
    var name: String
    var email: String
    var phoneNumber: String
    
    init(name: String, email: String, phoneNumber: String) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
    }
}
