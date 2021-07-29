//
//  ProductCatalogTableViewController.swift
//  GBShop
//
//  Created by Alexander Novikov on 26.07.2021.
//

import UIKit

class ProductCatalogTableViewController: UITableViewController {
    
    var catalog = [
        "Ноутбук",
        "Мышка",
        "Клавиатура"
    ]
    
    var priceCatalog = [
        "1000 р",
        "200 р",
        "100 р"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catalog.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        
        let product = catalog[indexPath.row]
        let price = priceCatalog[indexPath.row]
        
        cell.productName.text = product
        cell.productPrice.text = price
        
        return cell
    }
}