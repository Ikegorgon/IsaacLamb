//
//  DataInfoController.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/10/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class DataInfoController: UITableViewController {
    
    lazy var bucketList : [BucketItem] = {
        return loadBucketListFromFile()
    }()
    private func loadBucketListFromFile() -> [BucketItem] {
        var items = [BucketItem]()
        if let filePath = Bundle.main.url(forResource: "bucket", withExtension: "csv") {
            do {
                let input = try String(contentsOf: filePath)
                let bucketLines = input.components(separatedBy: "\n")
                for line in bucketLines {
                    let item = line.components(separatedBy: ",")
                    items.append(BucketItem(contents: item[0], author: item[1]))
                }
            } catch {
                print("File load error")
            }
        }
        return items
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bucketList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "dataIdentifier", for: indexPath) as! BucketItemCell
        currentCell.bucketItem = bucketList[indexPath.row]
        return currentCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
