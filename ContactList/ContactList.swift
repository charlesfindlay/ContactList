//
//  ContactList.swift
//  ContactList
//
//  Created by Kate Owens  on 10/8/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

class ContactList {
    var name: String
    var contacts: [Contact]
    
    init(name: String) {
        self.name = name
        self.contacts = []
    }
}