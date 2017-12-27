//
//  ViewController.swift
//  Binding Tutorial
//
//  Created by Thomas on 21.11.17.
//  Copyright © 2017 Thomas Grossen. All rights reserved.
//

import Cocoa

class Person: NSObject {
    @objc dynamic var firstName: String
    @objc dynamic var lastName: String
    @objc dynamic var age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

class ViewController: NSViewController {

    @objc dynamic var people: [Person] = [Person(firstName: "John", lastName: "Carter", age: 17),
                                          Person(firstName: "Thomas", lastName: "Smith", age: 38),
                                          Person(firstName: "Victoria", lastName: "Rossen", age: 43)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBOutlet weak var arrayContent: NSTextField!
    @IBOutlet weak var tableView: NSTableView!
    
    @IBAction func tableViewAction(_ sender: Any) {
        
        let index: Int = tableView.selectedRow
        
        if index > -1 {
            let person: Person = people[index]
            arrayContent.stringValue = "First Name: \(person.firstName)\nLast Name: \(person.lastName)\nAge: \(person.age)"
        }
        else {
            arrayContent.stringValue = ""
        }
    }
}


















