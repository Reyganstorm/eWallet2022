//
//  ViewController.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 04.06.2022.
//

import UIKit

class AuthViewController: UIViewController {

    
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var newAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.setTitle("Sign in →", for: .normal)
    }

    
    @IBAction func signInButtonPressed(_ sender: Any) {
    }
    

    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        // временно прибиндили кнопку на главном меню, чтоб возвращаться снова на этот экран
        // по завершению удалить этот метод а по нажатию на кнопку вызывать меню
        // так же изменить иконку на 4 кнопки 
    }
}
