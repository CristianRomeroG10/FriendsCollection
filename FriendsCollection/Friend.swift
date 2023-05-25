//
//  Friend.swift
//  FriendsCollection
//
//  Created by Cristian guillermo Romero garcia on 12/03/23.
//

import Foundation
import UIKit

struct Friend{
    
    var name: String
    var lastName: String
    var birthday: String
    var age: Int
    var friendImage: UIImage
    var fullName: String {
        return "\(self.name) \(self.lastName) "
    }
    
    init(name: String, lastName: String, birthday: String, age: Int, friendImage: UIImage) {
        self.name = name
        self.lastName = lastName
        self.birthday = birthday
        self.age = age
        self.friendImage = friendImage
    }
    
    
}
