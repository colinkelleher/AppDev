//
//  product.swift
//  Assignment2_CK
//
//  Created by Colin Kelleher on 20/11/2020.
//  Copyright © 2020 Colin Kelleher. All rights reserved.
//

import Foundation

// Create a class to represent the (name of the image file), the (title for the item),
// the (price of the item), and the (sellers phone number).
class product {
    var productTitle: String? // the title of the image
    var productPhone: String? // sellers phone number
    var productPrice: Double? // price of the item
    var productDesc: String? // description of the item 
    var productImg: String? // the name of the image file
    
    init(productTitle:String, productPhone: String, productPrice:Double,productDesc:String, productImg:String){
        
        self.productTitle = productTitle
        self.productPhone = productPhone
        self.productPrice = productPrice
        self.productDesc = productDesc
        self.productImg = productImg
    }
}

