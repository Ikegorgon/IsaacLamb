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
        let stepOne :String = "Create new java project"
        let stepTwo :String = "Name Project"
        let stepThree :String = "Add (project name).controller package to src folder"
        let stepFour :String = "Add (project name).model package to src folder"
        let stepFive :String = "Add (project name).view package to src folder"
        let stepSix :String = "Add (Project Name)Runner.java file to .contoller package"
        let stepSeven :String = "Add main method to Runner file"
        let stepEight :String = "Add (Project Name)Controller.java file to .controller package"
        let stepNine :String = "Add start method to Controller file"
        let stepTen :String = "Add code to controller to execute program"
        let stepEleven :String = "Add any display files to .view package and any item files to .model package along with all and any code to go with those files"
        let stepTwelve :String = "Import added files into (Project Name)Controller for use"
        
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
        setupAlgorithm()
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
