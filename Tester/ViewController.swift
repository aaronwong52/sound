//
//  ViewController.swift
//  Tester
//
//  Created by Aaron Wong on 11/28/17.
//  Copyright © 2017 Aaron Wong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {
  
    @IBOutlet weak var melodyLabel: NSTextField!
    var melody = [Int]();
    @IBOutlet weak var melodyTextField: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad();
        melodyTextField.delegate = self;
    }
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    override func controlTextDidEndEditing(_ obj: Notification) {
        melodyLabel.stringValue = melodyTextField.stringValue;
        melodyTextField.stringValue = "";
    }
    @IBAction func recordButton(_ sender: Any) {
    }
}

