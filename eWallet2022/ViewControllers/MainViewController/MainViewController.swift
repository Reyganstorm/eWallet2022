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
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .white
        
        // MARK: - Register CollectionViewCells
        collectionView.register(UINib(nibName: "SectionOneCell", bundle: nil), forCellWithReuseIdentifier: "sectionOne")
        
        collectionView.register(UINib(nibName: "ButtonViewCell", bundle: nil), forCellWithReuseIdentifier: "sectionTwoButton")
        collectionView.register(UINib(nibName: "SectionTwoCell", bundle: nil), forCellWithReuseIdentifier: "sectionTwo")
        
        collectionView.register(UINib(nibName: "SectionThreeCell", bundle: nil), forCellWithReuseIdentifier: "sectionThree")
        
        view.addSubview(collectionView)
        
        
//        collectionView.register(HeaderForPeople.self, forSupplementaryViewOfKind: ViewController.categoryHeaderID, withReuseIdentifier: headerID )
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}


extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        //if indexPath.section == 0 {
//            
//        //} else {
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath)
//        return header
//        //}
//    }
    
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

