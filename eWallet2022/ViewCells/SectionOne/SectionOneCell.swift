//
//  SectionOneCell.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 11.06.2022.
//

import UIKit

class SectoinOneCell: UICollectionViewCell {

    @IBOutlet var backView: UIView!
    @IBOutlet var moneyCountLabel: UILabel!
    
    @IBOutlet weak var buttonView: UIView!  {
        didSet {
            buttonView.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
            buttonView.layer.cornerRadius = 0.5 * button.bounds.size.width
            buttonView.clipsToBounds = true
        }
    }
    
    @IBOutlet var button: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        backView.layer.cornerRadius = 12
    }
}
