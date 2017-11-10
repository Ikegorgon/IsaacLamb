//
//  Algorithm Controller.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/8/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class Algorithm_Controller: UIViewController {

    //MARK: Data members
    @IBOutlet weak var Algorithm: UILabel!
    
    private func setupAlgorithm() -> Void {
        var algorithmSteps : [String] = []
        
        // TODO: Define algorithm and all steps
        let algorithm :String = "Making a Project in Java"
        let stepOne :String = "1. Create new java project"
        let stepTwo :String = "2. Name Project"
        let stepThree :String = "Add (project name).controller package to src folder"
        let stepFour :String = ""
        let stepFive :String = ""
        let stepSix :String = ""
        let stepSeven :String = ""
        let stepEight :String = ""
        let stepNine :String = ""
        let stepTen :String = ""
        let stepEleven :String = ""
        let stepTwelve :String = ""
        
        //TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight, stepNine, stepTen, stepEleven, stepTwelve]
        
        let attributesDictionary = [NSAttributedStringKey.font : Algorithm.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps {
            let bullet :String = "🖤"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragrashStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragrashStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        Algorithm.attributedText = fullAttributedString
    }
    private func createParagraphStyle() -> NSParagraphStyle {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        // algorithms
        return paragraphStyle
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
