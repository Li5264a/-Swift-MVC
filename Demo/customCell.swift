//
//  customCell.swift
//  Demo
//
//  Created by Kang Li on 2019/6/12.
//  Copyright © 2019 thoughtworks. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {
    
    
    @IBOutlet weak var customLabel: UILabel!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
