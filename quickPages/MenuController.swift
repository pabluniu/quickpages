//
//  MenuController.swift
//  quickPages
//
//  Created by Pa Bloo on 02/12/2017.
//  Copyright © 2017 pabloo. All rights reserved.
//

import Cocoa

class MenuController: NSObject {
    
    @IBOutlet weak var barMenu: NSMenu!
    @IBOutlet weak var pageItem: pageView!
    
    var menuPageItem: NSMenuItem!
    
    var menu2: NSMenuItem = NSMenuItem()
    
    let barItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    
    
    override func awakeFromNib() {
        
        let mIcon = NSImage(named: "myIcon")
        barItem.image = mIcon
        barItem.menu = barMenu
        
        menuPageItem = barMenu.item(withTitle: "Item")
        pageItem.pageName.stringValue = "duperka"
        menuPageItem.view = pageItem
        //menuPageItem.pagenam
        
        menu2.title  = "pawliczek"
        barMenu.addItem(menu2)
        menu2 = barMenu.addItem(withTitle: "s", action: nil, keyEquivalent: "ss")
        //menu2 = barMenu.pos
    
        //menu2.
       // barMenu.addItem(menu2)
        
      
        
        
    }

    

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        
        NSApplication.shared().terminate(self)
        
    }
}
