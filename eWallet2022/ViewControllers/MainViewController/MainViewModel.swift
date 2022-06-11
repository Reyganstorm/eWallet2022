//
//  MainViewModel.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 11.06.2022.
//

import Foundation

protocol ViewModelProtocol: AnyObject {
    var contacts: [Contact] { get }
    var currentBalance: String { get }
    
    var services: [Service] { get }
}

class MainViewModel: ViewModelProtocol {
    
    var currentBalance: String {
        DataStorage.shared.mainUser.currenBalance
    }
    
    var contacts: [Contact] {
        DataStorage.shared.mainUser.contacts
    }
    
    var services: [Service] {
        ServiceStorage.shared.services
    }
}
