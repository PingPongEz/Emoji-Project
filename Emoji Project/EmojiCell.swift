//
//  EmojiCell.swift
//  Emoji Project
//
//  Created by u on 31.03.2022.
//

import UIKit

class EmojiCell: UITableViewCell {

    @IBOutlet var emojiInCell: UILabel!
    @IBOutlet var emojiName: UILabel!
    @IBOutlet var descriptionEmoji: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    
    func changeModel(object: Cell) {
        self.emojiName.text = object.name
        self.descriptionEmoji.text = object.description
        self.emojiInCell.text = object.emoji
    }
    
    
}
