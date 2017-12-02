//
//  MenuController.swift
//  quickPages
//
//  Created by Pawel Poliwka on 02/12/2017.
//  Copyright © 2017 pabloo. All rights reserved.
//

import Cocoa

class MenuController: NSObject {
    
    @IBOutlet weak var barMenu: NSMenu!
    
    let barItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        let mIcon = NSImage(named: "myIcon")
        barItem.image = mIcon
        barItem.menu = barMenu
    }
    
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        
    }


}
