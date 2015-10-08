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
    
    func addContact(newContact: Contact) {
        self.contacts.append(newContact)
    }
    
    func deleteContact(contactList: ContactList,deleteContact: Contact) {
      
        if let i = contactList.contacts.indexOf({$0.name == deleteContact.name}) {
            contactList.contacts.removeAtIndex(i)
        }
    }
}
    
