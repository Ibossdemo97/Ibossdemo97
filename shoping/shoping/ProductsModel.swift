//
//  ProductsModel.swift
//  shoping
//
//  Created by Luyện Hà Luyện on 23/09/2022.
//

import Foundation

struct ProductsModel: Codable {
    var response: [Products]?
}

struct Products: Codable {
    var iphoneName: String?
    var products: [ProductsDetails]?
}

struct ProductsDetails: Codable {
    var name: String?
    var imagename: String?
}
