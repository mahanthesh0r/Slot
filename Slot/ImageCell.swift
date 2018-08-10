//
//  ImageCell.swift
//  Slot
//
//  Created by Mahanthesh R on 09/08/18.
//  Copyright © 2018 Mahanthesh. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {


    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
