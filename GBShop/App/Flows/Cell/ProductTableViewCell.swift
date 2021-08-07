//
//  ProductTableViewCell.swift
//  GBShop
//
//  Created by Alexander Novikov on 26.07.2021.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
