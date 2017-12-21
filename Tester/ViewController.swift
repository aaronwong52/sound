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
    @IBOutlet weak var melodyTextField: NSTextField!
    @IBOutlet weak var nameTextField: NSTextField!
    
    var melodyController = Melodies();
    override func viewDidLoad() {
        super.viewDidLoad();
        melodyTextField.delegate = self;
        nameTextField.delegate = self;
    }
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    // FIGURE OUT SEGUES
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        print("Segue time");
        if let NoteButtons = segue.destinationController as? noteButtons {
            NoteButtons.melodyController = melodyController;
            print("passed over");
        }
    }
    @IBAction func saveButton(_ sender: Any) {
        let newMelody = Melodies.Melody(name: nameTextField.stringValue, melody: melodyTextField.stringValue);
        melodyController.melodies.append(newMelody);
        resetTextFields();
        print(melodyController.melodies.count);
    }
    private func resetTextFields() {
        nameTextField.stringValue = "";
        melodyTextField.stringValue = "";
    }
}

