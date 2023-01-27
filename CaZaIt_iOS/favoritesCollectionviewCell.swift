//
//  favoritesCollectionviewCell.swift
//  CaZaIt_FavoritesView
//
//  Created by 홍서린 on 2023/01/26.
//

import UIKit

let sectionInsets = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)


extension FavoritesViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "view1", for: indexPath) as? view1
        cell?.backgroundColor = UIColor.white
        cell?.layer.cornerRadius = 15
        cell?.layer.shadowColor = UIColor.black.cgColor
        cell?.layer.shadowOffset = CGSize(width: 0, height: 4)
        cell?.layer.shadowRadius = 4
        cell?.layer.shadowOpacity = 0.25
        
        
        return cell ?? UICollectionViewCell()
    }
}

extension FavoritesViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = (UIScreen.main.bounds.width - 49) / 2
        let cellHeight = cellWidth * ( 267 / 172 )
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    
        
    
}
