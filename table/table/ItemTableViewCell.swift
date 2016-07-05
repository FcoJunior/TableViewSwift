//
//  ItemTableViewCell.swift
//  table
//
//  Created by Fco Junior on 7/4/16.
//  Copyright © 2016 Junior. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var btn: UIButton!
    var textValue: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setItem(text: String) {
        self.btn.setTitle(text, forState: .Normal)
        self.textValue = text
        print("===>>> setItem(): \(text)")
    }

}
