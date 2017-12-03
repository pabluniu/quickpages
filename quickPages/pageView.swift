//
//  pageView.swift
//  quickPages
//
//  Created by Pa Bloo on 03/12/2017.
//  Copyright © 2017 pabloo. All rights reserved.
//

import Cocoa

class pageView: NSView {
    
    @IBOutlet weak var pageName: NSTextField!
    
    func update(){
        
        self.pageName.stringValue = "Pala"
        
    }
}
