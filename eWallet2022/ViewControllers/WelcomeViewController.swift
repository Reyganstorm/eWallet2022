//
//  ViewController.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 04.06.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var newAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.setTitle("Sign in →", for: .normal)
    }

    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
    }
    

}
