//
//  ProductCell.swift
//  CoffeeSearchApp
//
//  Created by 석기권 on 6/14/24.
//

import UIKit

class ProductCell: UITableViewCell {
    static let identifier = "ProductCell"
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    public var imageUrl: String? {
        didSet {
            productImage.load(url: URL(string: imageUrl ?? "")!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
