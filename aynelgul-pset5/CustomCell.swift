//
//  CustomCell.swift
//  aynelgul-pset5
//
//  Created by Aynel Gül on 02-12-16.
//  Copyright © 2016 Aynel Gül. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var todoSwitch: UISwitch!
    @IBOutlet weak var todoItem: UILabel!
    
    @IBAction func switchTouch(_ sender: UISwitch) {
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
