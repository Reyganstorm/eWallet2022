//
//  HeaderView.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 12.06.2022.
//

import UIKit

class HeaderView: UICollectionReusableView {
        
    @IBOutlet weak var headerName: UILabel!
    @IBOutlet weak var headerButton: UIButton?
    
    static let headerID = "headerView"
    
    
    func configuration(name: String, buttonName: String?) {
        headerName.text = name
        if buttonName != nil {
            headerButton?.setImage(UIImage(named: buttonName ?? ""), for: .normal)
        }
    }
}
