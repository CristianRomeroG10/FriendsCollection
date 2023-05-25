//
//  FriendsCollectionViewCell.swift
//  FriendsCollection
//
//  Created by Cristian guillermo Romero garcia on 11/03/23.
//

import UIKit

class FriendsCollectionViewCell: UICollectionViewCell {

    //MARK:Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var friendImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    func setup(withFriend friend: Friend){
        nameLabel.text = friend.fullName
        birthdayLabel.text = friend.birthday
        ageLabel.text = "\(friend.age)"
        friendImage.image = friend.friendImage
        
    }

}
