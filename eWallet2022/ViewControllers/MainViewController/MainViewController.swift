//
//  MainViewController.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 04.06.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private var viewModel: ViewModelProtocol!
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MainViewModel()
        collectionView.collectionViewLayout = createLayout()
        setupCollectionView()
    }
    
    private func setupCollectionView() {

//        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: HeaderView.headerID, withReuseIdentifier: "headerView" )
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}


extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
       
        
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerView", for: indexPath)
            
            guard let typeHeaderView = header as? HeaderView else { return header}
            
            typeHeaderView.headerName.text = "Right"
        
        return typeHeaderView
        
//        if indexPath.section == 0 {
//
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerView", for: indexPath) as! HeaderView
//
//            header.headerName.text = "Account Overview"
//            return header
//        } else {
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: HeaderView.headerID, withReuseIdentifier: "headerView", for: indexPath) as! HeaderView
//            header.headerName.text = "Account Overview"
//        return header
//        }
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return viewModel.contacts.count + 1
        } else {
            return viewModel.services.count
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionOne", for: indexPath) as! SectoinOneCell
            cell.moneyCountLabel.text = viewModel.currentBalance
        
            return cell
            
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionTwoButton", for: indexPath) as! ButtonViewCell
                return cell
            } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionTwo", for: indexPath) as! SectionTwoCell
            
            let contact = viewModel.contacts[indexPath.row - 1]
            
            cell.configuration(contact: contact)
            
            return cell
            }
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionThree", for: indexPath) as! SectionThreeCell
            
            let service = viewModel.services[indexPath.row]
            cell.configuration(service: service)
            
            return cell
        }
        
    }
    
    
}

