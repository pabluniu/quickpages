//
//  FavPage.swift
//  quickPages
//
//  Created by Pa Bloo on 03/12/2017.
//  Copyright © 2017 pabloo. All rights reserved.
//

import Cocoa

class FavPage{
    
    var pageAllias: String
    var pageAddress: String
    var pageIcon: NSImage?
    
    init?(pAlias: String, pAddress: String, pIcon: NSImage?) {
        
        //If there is no alias or address - Fail
        if pAlias.isEmpty || pAddress.isEmpty{
            
            return nil;
        }
        
        //Initialization
        self.pageAllias = pAlias
        self.pageAddress = pAddress
        self.pageIcon = pIcon
    }


}
