//
//  AppDelegate.swift
//  quickPages
//
//  Created by Pa Bloo on 02/12/2017.
//  Copyright © 2017 pabloo. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    @IBOutlet weak var barMenu: NSMenu!

    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let mIcon = NSImage(named: "myIcon")
        statusItem.image = mIcon
        statusItem.menu = barMenu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        
    }


}

