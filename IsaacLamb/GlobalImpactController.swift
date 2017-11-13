//
//  GlobalImpactController.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/10/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class GlobalImpactController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    private func imageAction() -> Void {
        if (image.image == #imageLiteral(resourceName: "globalcooling")) {
            image.image = #imageLiteral(resourceName: "writeout")
        } else if (image.image == #imageLiteral(resourceName: "writeout")) {
            image.image = #imageLiteral(resourceName: "globalcooling")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
