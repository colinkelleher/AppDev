//
//  ProductTableViewCell.swift
//  Assignment2_CK
//
//  Created by Colin Kelleher on 20/11/2020.
//  Copyright © 2020 Colin Kelleher. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productPhone: UILabel!
    @IBOutlet weak var productDesc: UILabel!
    @IBOutlet weak var photo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
