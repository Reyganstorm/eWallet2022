//
//  DataStorage.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 05.06.2022.
//

import Foundation

class DataStorage {
    static let shared = DataStorage()
    private init() {}
    
    let mainUser = User(name: "carol",
                        image: "Carol Black",
                        currenBalance: "20,600",
                        contacts:
    [Contact(image: "mike", name: "Mike"),
     Contact(image: "joshpeh", name: "Joshpeh"),
     Contact(image: "ashley", name: "Ashley"),
     Contact(image: "anonim", name: "Taylor"),
     Contact(image: "anonim", name: "Tim"),
     Contact(image: "anonim", name: "Rick")]
    )
}

class ServiceStorage {
    static let shared = ServiceStorage()
    private init() {}
    
    let services: [Service] = [
        Service(imageName: "1", service: "Send Money"),
        Service(imageName: "2", service: "Receive Money"),
        Service(imageName: "3", service: "Mobile Prepaid"),
        Service(imageName: "4", service: "Electricity Bill"),
        Service(imageName: "5", service: "Cashback Offer"),
        Service(imageName: "6", service: "Movie Tickets"),
        Service(imageName: "7", service: "Flight Tickets"),
        Service(imageName: "8", service: "More Options")
    ]
}
