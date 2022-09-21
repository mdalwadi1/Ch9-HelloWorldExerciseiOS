//
//  ViewController.swift
//  Ch3 - HelloWorld!
//
//  Created by user216619 on 4/13/22.
// Code that controls user interactions with app

import UIKit

class ViewController: UIViewController {

    // An outlet that reads what user entered and updated to contain own text string based on two text fields
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblOutput: UILabel!

    @IBAction func showOutput(_ sender: Any) {
        let name = txtName.text
        let output = "Hello " + name!
        lblOutput.text = output
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }


}

