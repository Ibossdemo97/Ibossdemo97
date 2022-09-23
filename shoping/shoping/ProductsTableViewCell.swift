//
//  ProductsTableViewCell.swift
//  shoping
//
//  Created by Luyện Hà Luyện on 23/09/2022.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {

    @IBOutlet weak var collection1: UICollectionView!
    @IBOutlet weak var iphone14Series: UILabel!
    
    var product: Products? {
        didSet {
            iphone14Series.text = product?.iphoneName
            collection1.reloadData()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collection1.dataSource = self
        collection1.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func ViewAllButton(_ sender: Any) {
    }
}

extension ProductsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product?.products?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCollectionViewCell", for: indexPath) as? ProductsCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.productName.text = product?.products?[indexPath.row].name
        cell.image1.image = UIImage(named: product?.products?[indexPath.row].imagename ?? "")
        return cell
    }
    
}
