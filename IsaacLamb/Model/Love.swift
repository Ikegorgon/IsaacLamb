//
//  Squishable.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/20/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import Foundation
public protocol Lovable {
    var loveState : Bool {get set}
    func love () -> Void
    func isLoved() -> Bool
}
