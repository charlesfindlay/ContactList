//
//  ViewController.swift
//  ContactList
//
//  Created by Student on 10/8/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var myContacts = ContactList(name: "Bootcamp Students")
    
    
    @IBOutlet weak var studentName: UITextField!
    @IBOutlet weak var studentPhoneNumber: UITextField!
    @IBOutlet weak var studentEmailAddress: UITextField!
    
    @IBOutlet weak var contactTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myContacts.contacts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("contactCellIdentifier") as UITableViewCell!
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "contactCellIdentifier")
        }
        cell.textLabel?.text = myContacts.contacts[indexPath.row].name
        return cell
        
    }
    

    @IBAction func submitStudentInfo(sender: AnyObject) {
        let newName = studentName.text!
        let newStudentPhoneNumber = studentPhoneNumber.text!
        let newStudentEmailAddress = studentEmailAddress.text!
        
        let newContact = Contact(name: newName, email: newStudentEmailAddress, phoneNumber: newStudentPhoneNumber)
        myContacts.addContact(newContact)
        print(myContacts.contacts.count)
        contactTableView.reloadData()
        
    }

    
}

