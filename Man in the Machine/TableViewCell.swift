//
//  TableViewCell.swift
//  Woman in the Machine
//
//  Created by Adrian McClure on 7/5/16.
//  Copyright © 2016 Adrian McClure. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   
   
   

    @IBOutlet weak var achieve: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var checkBox: UIImageView!
     
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
