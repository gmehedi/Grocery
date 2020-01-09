//
//  DataProvider.swift
//  Grocery
//
//  Created by A on 25/12/2019.
//  Copyright © 2019 ecomarce. All rights reserved.
//

import Foundation

class DataProvider{
    
    func GetData() -> [Cetagories] {
        let grocery = Cetagories(id: "1", name: "Grocery", quantity: 1)
        let fasion = Cetagories(id: "2", name: "Fasion", quantity: 1)
        let electronics = Cetagories(id: "3", name: "Electronics", quantity: 1)
        let cosmatics = Cetagories(id: "4", name: "Cosmatics", quantity: 1)
        let medicine = Cetagories(id: "5", name: "Medicine", quantity: 1)
        let chocolate = Cetagories(id: "6", name: "Chocolates", quantity: 1)
        let babyItem = Cetagories(id: "7", name: "Baby Item",  quantity: 1)
        let ladiesItem = Cetagories(id: "8", name: "Ladies Item", quantity: 1)
        let oldFasion = Cetagories(id: "9", name: "Old Fasion", quantity: 1)
        let newFasion = Cetagories(id: "10", name: "New Fasion", quantity: 1)
        
        return [ grocery, fasion, electronics, cosmatics, medicine, chocolate, babyItem, ladiesItem, oldFasion, newFasion ]
    }
    
    func GetAllProducts() -> [AllProducts] {     
        let grocery = AllProducts(id: "1", name: "G1", price: 100.12, quantity: 1, img: #imageLiteral(resourceName: "G3"))
        let fasion = AllProducts(id: "2", name: "F1", price: 300.50, quantity: 1, img: #imageLiteral(resourceName: "F1"))
        let electronics = AllProducts(id: "3", name: "E1", price: 400.50, quantity: 1, img: #imageLiteral(resourceName: "E4"))
        let cosmatics = AllProducts(id: "4", name: "C1", price: 700.50, quantity: 1, img: #imageLiteral(resourceName: "C5"))
        let medicine = AllProducts(id: "5", name: "C2", price: 900.50, quantity: 1, img: #imageLiteral(resourceName: "G10"))
        let chocolate = AllProducts(id: "6", name: "G8", price: 250.50, quantity: 1, img: #imageLiteral(resourceName: "G8"))
        let babyItem = AllProducts(id: "7", name: "B1",  price: 1300.50, quantity: 1, img: #imageLiteral(resourceName: "B6"))
        let ladiesItem = AllProducts(id: "8", name: "F3", price: 600.50, quantity: 1, img: #imageLiteral(resourceName: "F3"))
        let oldFasion = AllProducts(id: "9", name: "O1", price: 450.50, quantity: 1, img: #imageLiteral(resourceName: "O2"))
        
        return [ grocery, fasion, electronics, cosmatics, medicine, chocolate, babyItem, ladiesItem, oldFasion ]
    }
    
}
