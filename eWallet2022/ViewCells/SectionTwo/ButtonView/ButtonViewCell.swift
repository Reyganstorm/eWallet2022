//
//  ButtonViewCell.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 11.06.2022.
//

import UIKit

class ButtonViewCell: UICollectionViewCell {
    
    @IBOutlet var backView: UIView!
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.frame = CGRect(x: 0, y: 0, width: 52, height: 52)
            button.layer.cornerRadius = 0.5 * button.bounds.size.width
            button.clipsToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.layer.cornerRadius = backView.frame.width/2
    }
}
