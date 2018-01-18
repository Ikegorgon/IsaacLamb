//
//  InternetController.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/10/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class InternetController: UITableViewController {

    private (set) lazy var internetTopics: [String] = {
        return [
            "Home Page",
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    private lazy var addresses : [String] = []
    private var detailViewController : InternetDetailViewController?
    private func setup() -> Void {
        addresses = [
            "https://www.google.com",
            "https://www.merriam-webster.com/",
            "https://apstudent.collegeboard.org/apcourse/ap-computer-science-principles",
            "https://ctec.canyonsdistrict.org/",
            "https://skyward.canyonsdistrict.org/",
            "https://twitter.com/search?q=%7BsearchTerms%7D",
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309"
        ]
        if let splitView = splitViewController {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as?
                InternetDetailViewController
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
        // Do any additional setup after loading the view.
    }
    
    override public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return internetTopics.count
    }
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let urlString = addresses[indexPath.row]
                let pageText : String
                if indexPath.row == 1 {
                    /*pageText = "URL: Uniform Resource Locator, world wide web link. TCP: a set of rules that governs the delivery of data over the Internet or other network that uses the Internet Protocol, and sets up a connection between the sending and receiving computers. IP: Internet Protocol, a set of rules governing the format of data sent over the Internet or other network. DNS: (Domain Name System) The Internet's system for converting alphabetic names into numeric IP addresses."*/
                    pageText = "Definitions - Define: URL, TCP, IP, & DNS"
                } else {
                    pageText = internetTopics[indexPath.row]
                }
                let controller = segue.destination as!
                    InternetDetailViewController
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
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
