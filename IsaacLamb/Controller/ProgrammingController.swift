//
//  ProgrammingController.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/10/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingController: UIViewController {

    override public func viewDidLoad() -> Void {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
    }
}
