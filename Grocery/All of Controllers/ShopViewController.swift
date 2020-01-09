//
//  ShopViewController.swift
//  Grocery
//
//  Created by A on 23/12/2019.
//  Copyright © 2019 ecomarce. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var mTableView: UITableView!
    var allData: [Cetagories]!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBarItem.badgeColor = UIColor.red
        self.navigationItem.title = "My Shop"
            
        allData = DataProvider().GetData()
        self.mTableView.dataSource = self
        self.mTableView.delegate = self
        self.mTableView.tableFooterView = UIView(frame: CGRect.zero)
        
        let nib = UINib(nibName: TableViewCell.id, bundle: nil)
        self.mTableView.register(nib, forCellReuseIdentifier: TableViewCell.id)
    }
}

extension ShopViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String("All Available Product")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.id) as! TableViewCell
        
        let now = self.allData[indexPath.row]
        cell.cetagoryLabel.text = now.name
        cell.itemLabel.text = now.id
        cell.imgView.image = UIImage(named: "label")
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: App.Controller.AllProductsViewController)as? AllProductsViewController{
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
    
    
}
