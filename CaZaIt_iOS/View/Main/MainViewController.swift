//

//  ViewController.swift

//  cazait_hsseor

//  Created by 홍서린 on 2023/01/14.

//

import UIKit

class MainViewController: UIViewController {
    
    let topview: topView = {
        let view = topView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let bottomview: bottomView = {
        let view = bottomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    private lazy var cafeCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(r: 241, g: 241, b: 239)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 34
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(customcafeView.self, forCellWithReuseIdentifier: "customcafeView")
        
        return collectionView
        
    }()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(r: 93, g: 36, b: 36)
        self.navigationController?.navigationBar.isHidden = true

        
        setupView()
        
        
    }
    
    func setupView() {
        
        self.view.addSubview(topview)
        self.view.addSubview(bottomview)
        self.bottomview.addSubview(self.cafeCollectionView)
        
        NSLayoutConstraint.activate([
            
            self.cafeCollectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 225),
            self.cafeCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            self.cafeCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            self.cafeCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            
            topview.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 54),
            topview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -700),
            topview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            topview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
            bottomview.topAnchor.constraint(equalTo: self.topview.bottomAnchor, constant: 0),
            bottomview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            bottomview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            bottomview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
            
        ])
        
    }
//
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = InfoViewController()
        self.navigationController?.pushViewController(vc, animated : true)
        self.navigationItem.title = " "
        self.navigationController?.navigationBar.tintColor = .white

    }
    
}
