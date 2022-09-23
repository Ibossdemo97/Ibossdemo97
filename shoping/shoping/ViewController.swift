//
//  ViewController.swift
//  shoping
//
//  Created by Luyện Hà Luyện on 23/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var productData: ProductsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStore()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func loadStore() {
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsTableViewCell") as? ProductsTableViewCell else {
            return UITableViewCell()
        }
        cell.product = productData?.response?[indexPath.row]
        return cell
    }
}
   
