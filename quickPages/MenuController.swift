//
//  MenuController.swift
//  quickPages
//
//  Created by Pa Bloo on 02/12/2017.
//  Copyright © 2017 pabloo. All rights reserved.
//

import Cocoa

class MenuController: NSObject {
    
   // UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil]
    
    let sstoryBoard = NSStoryboard.init(name: "Main", bundle: nil)
    
    @IBOutlet weak var barMenu: NSMenu!
    @IBOutlet weak var pageItem: pageView!
    
    //var menuPageItem: NSMenuItem!
    
    let barItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    let page1 = FavPage.init(pAlias: "GitHub", pAddress: "http://github.com", pIcon: nil)

    let page2 = FavPage.init(pAlias: "Docker", pAddress: "http://docker.com", pIcon: nil)
    
    
    
    override func awakeFromNib() {
        
        let favo = ["First1", "Second1"]
        
        let mIcon = NSImage(named: "myIcon")
        barItem.image = mIcon
        barItem.menu = barMenu
        
       for fav in favo{
        
        let nazwa = fav + "PP"
        
        barMenu.addItem(withTitle: nazwa, action: nil, keyEquivalent: "")
        
        var menuItem: NSMenuItem!
        
        menuItem = barMenu.item(withTitle: nazwa)
        
        pageItem.pageName.stringValue = fav
        menuItem.view = pageItem
        
        
        }
    
    }

    

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        
        NSApplication.shared().terminate(self)
        
    }
}
