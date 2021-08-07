//
//  ProductViewController.swift
//  GBShop
//
//  Created by Alexander Novikov on 02.08.2021.
//

import UIKit

class ProductViewController: UICollectionViewController {
    
    @IBAction func addUserComments(_ sender: UIButton) {
        let alertConrtoller = UIAlertController(title: "Комментарий", message: "Введите свой отзыв", preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "Okey", style: .default, handler: nil)
        alertConrtoller.addAction(alertOkAction)
        alertConrtoller.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter your commentary"}
        present(alertConrtoller, animated: true, completion: nil)
    }
    
    @IBAction func trashButton(_ sender: UIButton) {
    }
    
    
    private let requestFactory = RequestFactory()
    var product = ProductResult()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
    
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductInfoCell", for: indexPath) as! ProductViewCell
    
        cell.productName.text = "Описание: \(product.description)"
        cell.productPrice.text = "Цена: \(product.price) \u{20BD}"
        
        return cell
    }
    
}
