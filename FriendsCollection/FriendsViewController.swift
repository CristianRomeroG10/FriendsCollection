//
//  FriendsViewController.swift
//  FriendsCollection
//
//  Created by Cristian guillermo Romero garcia on 08/03/23.
//

import UIKit

class FriendsViewController: UIViewController {
    
    
    
    @IBOutlet weak var friendsCollectionView: UICollectionView!
    
    
    private let friends = [
        Friend(name: "Pedro", lastName: "Rouin", birthday: "1 de abril", age: 22, friendImage: UIImage(named: "Pedro")!),
        Friend(name: "Alexey", lastName: "Garrido", birthday: "23 de agosto", age: 22, friendImage: UIImage(named: "Alexey" )!),
        Friend(name: "Leonardo", lastName: "Vidal", birthday: "20 de Junio", age: 22, friendImage: UIImage(named: "LeoVidal")!),
        Friend(name: "Vanesa", lastName: "Zamudio", birthday: "14 de febrero", age: 23, friendImage: UIImage(named: "Vane")!),
        Friend(name: "Mitzi", lastName: "Hernandez", birthday: "12 de diciembre", age: 22, friendImage: UIImage(named: "Mitzi")!),
        Friend(name: "Valeria", lastName: "Sandoval", birthday: "4 de julio", age: 22, friendImage: UIImage(named: "Valeria")!),
        Friend(name: "Abdi", lastName: "Dan", birthday: "13 de noviembre", age: 22, friendImage: UIImage(named: "AbdiDan")!),
        Friend(name: "Gerardo", lastName: "Martinez", birthday: "24 de abril", age: 22, friendImage: UIImage(named: "Gera")!),
        Friend(name: "Cristian", lastName: "Romero", birthday: "10 de septiembre", age: 22, friendImage: UIImage(named: "Cristian")!),
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        friendsCollectionView.register(UINib(nibName: "FriendsCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "FriendsCollectionViewCell")
        friendsCollectionView.setCollectionViewLayout(generateLayout(), animated: true)
        friendsCollectionView.dataSource = self
        
        
            
        
        
        
    }
    func generateLayout() -> UICollectionViewLayout{
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .absolute(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        let spacing = CGFloat(10)
        group.interItemSpacing = .fixed(spacing)
        
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = spacing
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
        }
    }



extension FriendsViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsCollectionViewCell", for: indexPath)as? FriendsCollectionViewCell{
            let friend = friends[indexPath.item]
            cell.setup(withFriend: friend)
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}

/*
 
 let itemSize = NSCollectionLayoutSize(
     widthDimension: .fractionalWidth(1),
     heightDimension: .fractionalHeight(1)
 )
 
 let item = NSCollectionLayoutItem(
     layoutSize: itemSize
 )
 
 let groupSize = NSCollectionLayoutSize(
     widthDimension: .fractionalWidth(1),
     heightDimension: .fractionalHeight(1/2)
 )
 
 let group = NSCollectionLayoutGroup.horizontal(
     layoutSize: groupSize,
     repeatingSubitem: item,
     count: 1
 )
 let spacing: CGFloat = 10
 group.contentInsets =  NSDirectionalEdgeInsets(
     top: spacing,
     leading: spacing,
     bottom: 0,
     trailing: spacing
 )
 
 let section = NSCollectionLayoutSection(group: group)
 
 let layout = UICollectionViewCompositionalLayout(section: section)
 
 
 
 return layout
 */
