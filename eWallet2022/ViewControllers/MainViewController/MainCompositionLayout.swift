//
//  MainCompositionLayout.swift
//  eWallet2022
//
//  Created by Руслан Штыбаев on 11.06.2022.
//

import UIKit

extension MainViewController {
    
    func createLayout() -> UICollectionViewLayout {
        // section -> groups -> items -> size
        return UICollectionViewCompositionalLayout{ (sectionNumber, env) -> NSCollectionLayoutSection in
            
            
            if sectionNumber == 0 {
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                item.contentInsets = NSDirectionalEdgeInsets(
                    top: 10,
                    leading: 5,
                    bottom: 5,
                    trailing: 5)
                
                item.contentInsets.trailing = 25
                item.contentInsets.leading = 25
                item.contentInsets.bottom = 28
                
                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .absolute(150))
                
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                
                let headerItem = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension: .fractionalHeight(1), heightDimension: .absolute(85)), elementKind: HeaderView.headerID, alignment: .top)
                section.boundarySupplementaryItems = [headerItem]
                
                section.orthogonalScrollingBehavior = .paging
                return section
                
            } else if sectionNumber == 1 {
                
                let inset: CGFloat = 5
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .absolute(110),
                    heightDimension: .absolute(130))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                item.contentInsets = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
                
                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .estimated(1),
                    heightDimension: .estimated(1))
                
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [item])
                
                
                let section = NSCollectionLayoutSection(group: group)
                
                section.contentInsets.leading = 10
                section.orthogonalScrollingBehavior = .continuous
                
//                section.boundarySupplementaryItems = [.init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: ViewController.categoryHeaderID, alignment: .topLeading)]
                
                return section
            } else {
                
                let widthInset: CGFloat = 14
                //let heightInset: CGFloat = 10
                
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .absolute(60+28),
                    heightDimension: .absolute(96+20))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                item.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: widthInset, bottom: 0, trailing: widthInset)
                
                
                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(500))
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                group.contentInsets.leading = (self.view.bounds.width - 352) / 2
  
                let section = NSCollectionLayoutSection(group: group)
                section.boundarySupplementaryItems = .init()
                section.contentInsets.top = 50
                return section
            }
            
        }
    }
}
