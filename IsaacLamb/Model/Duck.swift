//
//  Duck.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/20/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit
public class Duck : Lovable {
    private var duckColor : UIColor
    public var loveState: Bool
    
    public init() {
        self.duckColor = UIColor()
        self.loveState = false
    }
    public func love() -> Void {
        print ("I am Lovable")
        loveState = true
    }
    public func isLoved() -> Bool {
        if(loveState) {
            print("Loved")
        } else {
            print("Hated")
        }
        return loveState
    }
}
