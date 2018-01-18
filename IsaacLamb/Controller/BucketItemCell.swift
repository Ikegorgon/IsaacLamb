//
//  BucketItemCell.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 1/5/18.
//  Copyright © 2018 Lamb, Isaac. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell {

    @IBOutlet weak var ItemText: UILabel!
    @IBOutlet weak var ItemSymbol: UILabel!
    @IBOutlet weak var ItemAuthor: UILabel!
    
    var bucketItem : BucketItem! {
        didSet {
            updateCellView()
        }
    }
    private func randomEmoji() -> String {
        let emojiStart = 0x1F601
//        let emojiEnd = 0x1F64F
//        let symbolStart = 0x1F680
//        let symbolEnd = 0x1F6C5
        
        let emojiRange = 79
//        let symbolRange = 70
        
        let ascii = emojiStart + Int (arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
    }
    private func updateCellView() {
        if (bucketItem != nil) {
            ItemAuthor.text = bucketItem.itemAuthor
            ItemText.text = bucketItem.itemContents
        } else {
            ItemAuthor.text = "author goes here"
            ItemText.text = "text goes here"
        }
        ItemSymbol.text = randomEmoji()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
