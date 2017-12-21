//
//  noteButtons.swift
//  Tester
//
//  Created by Aaron Wong on 11/30/17.
//  Copyright © 2017 Aaron Wong. All rights reserved.
//

import Cocoa

class noteButtons: NSViewController {
    required init?(coder: NSCoder) {
        super.init(coder:coder);
    }
    var melodyController: Melodies!
    
    override func viewDidLoad() {
        loadMelodies();
        super.viewDidLoad()
        loadButtons();
    }
    /* Private Functions */
    
    // ONCE SEGUES ARE SET, CREATE LABELS FOR EACH MELODY TO BE DISPLAYED
    private func loadMelodies() {
        for melody in melodyController.melodies {
            print(melody.melody);
        }
        print(melodyController.melodies.count);
    }
    private func loadButtons() {
        var pos = 0;
        var denom = 32;
        while (denom != 1) {
            setupButton(buttonName: "\(denom)", x_pos:pos);
            denom /= 2;
            pos+=100;
        }
    }
    private func setupButton(buttonName:String, x_pos:Int) {
        let name = buttonName;
        let buttonName = NSButton(frame:NSRect(x:0, y:0, width:100, height:50));
        var frame = buttonName.frame;   // increment position of button
        frame.origin.x = CGFloat(x_pos);
        buttonName.frame = frame; buttonName.title = name;
        buttonName.translatesAutoresizingMaskIntoConstraints = false;
        self.view.addSubview(buttonName);
    }
    
    
}
