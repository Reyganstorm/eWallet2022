//
//  SectionThreeCell.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 11.06.2022.
//

import UIKit

class SectionThreeCell: UICollectionViewCell {

    
    @IBOutlet weak var serviceView: UIView!
    @IBOutlet weak var serviceLabel: UILabel!
    
    @IBOutlet weak var serviceImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        serviceView.layer.cornerRadius = 12
    }

    func configuration(service: Service) {
        serviceImageView.image = UIImage(named: service.imageName)
        serviceLabel.text = service.service
    }
}
