//
//  AllProducts.swift
//  Grocery
//
//  Created by A on 04/01/2020.
//  Copyright © 2020 ecomarce. All rights reserved.
//

import Foundation
import UIKit

class AllProducts{
    var id: String!
    var name: String!
    var price: Double!
    var quantity: Int!
    var img: UIImage!
    
    
    init(id: String, name: String, price: Double, quantity: Int, img: UIImage) {
        self.id = id
        self.name = name
        self.price = price
        self.quantity = quantity
        self.img = img
    }
    
}
