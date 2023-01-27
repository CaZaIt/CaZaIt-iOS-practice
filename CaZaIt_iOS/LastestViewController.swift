//
//  ViewController.swift
//  CaZaIt_LastestView
//
//  Created by 홍서린 on 2023/01/26.
//

import UIKit

class LastestViewController: UIViewController {
    
    //컬렉션뷰 레이아웃 주기
    
    private lazy var cafeCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(r: 241, g: 241, b: 239)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 34
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(view1.self, forCellWithReuseIdentifier: "view1")
        
        layout.sectionInset = UIEdgeInsets(top: 23, left: 0, bottom: 0, right: 0)
        
        
        return collectionView
        
    }()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(r: 93, g: 36, b: 36)
        
        setupView()
        
    }
    
    func setupView() {
        
        self.view.addSubview(self.cafeCollectionView)
        
        NSLayoutConstraint.activate([
            
            self.cafeCollectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 129),
            self.cafeCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            self.cafeCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            self.cafeCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            
            
        ])
        
    }
    
}
