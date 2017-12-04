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
    
    //var menuPageItem: NSMenuItem!
    
    let barItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    let page1 = FavPage.init(pAlias: "GitHub", pAddress: "http://github.com", pIcon: nil)
    let page2 = FavPage.init(pAlias: "Docker", pAddress: "http://docker.com", pIcon: nil)
    
    
    
    override func awakeFromNib() {
        
        let favo = [page1, page2]
        
        let mIcon = NSImage(named: "myIcon")
        barItem.image = mIcon
        barItem.menu = barMenu
        
       for fav in favo{
        
        var item = NSMenuItem.init()
        //var item: NSMenuItem = NSMenuItem.init(title: (fav?.pageAllias)!, action: nil, keyEquivalent: "")
        
        pageItem.pageName.stringValue = (fav?.pageAllias)!
        
        item.view = pageItem
        
        
        barMenu.insertItem(item, at: 0)
        
            
        }
    }

    

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        
        NSApplication.shared().terminate(self)
        
    }
}
