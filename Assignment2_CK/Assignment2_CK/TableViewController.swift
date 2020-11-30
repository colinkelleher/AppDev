//
//  TableViewController.swift
//  Assignment2_CK
//
//  Created by Colin Kelleher on 20/11/2020.
//  Copyright © 2020 Colin Kelleher. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var testarray:[product] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewDidLoad()
        
        let testproduct = product(productTitle: "Audi A5 Sport", productPhone: "086-2175454", productPrice:34599, productDesc:
            "A state of the art Audi A5 Sport S-Line 3 door model, with added extras included. Full Audi Service history. Zenon Headlights. Sun Roof. Integrated Phone System & Apple CarPlay. Heated Seats. Electric Seats with memory. 360 Degree Parking System ", productImg: "image1")
        
        let testproduct3 = product(productTitle: "Macbook Pro", productPhone: "083-5671234", productPrice:1436,  productDesc:
            "13.3 Inch Retina Display. Space Grey. Apple M1 Chip. 16GB Memory. 2TB Storage. 20 hours battery life. Built-in Applications such as iMovie, Pages & Keynote. 8-core GPU. macOS Big Sur. Magic Keyboard & Touchbar" ,productImg: "image4")
        
        let testproduct1 = product(productTitle: "Audi TT Coupe", productPhone: "085-1234567", productPrice: 23750,
                                   productDesc: "White 2.0 TDI 170 BHP Quattro Diesel. Full Audi Service History. Apple CarPlay. Heated Seats, Sport Mode. Zenon LED Lights with Auto Beam. Rain Sensor. Electric Seats. Cream Leather Seats. Keyless Entry. Reversing Camera & Parking Sensors.   ", productImg: "image2")
        
        let testproduct2 = product(productTitle: "iPhone 11 Pro", productPhone: "083-7654321", productPrice:879,  productDesc:
            "256 GB Black iPhone 11 Pro. 5.8'' Super Retina XDR display, 4g LTE celluar. 4x Optical zoom range. A13 Bionic chip. UP to 18 hours video playback. Face ID" ,productImg: "image3")
        
        
        testarray.append(testproduct)
        testarray.append(testproduct3)
        testarray.append(testproduct1)
        testarray.append(testproduct2)


        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.testarray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell

        
        let product = self.testarray[indexPath.row]
        // Configure the cell...
        
        cell.productTitle?.text = product.productTitle!
        cell.productPrice?.text = String(product.productPrice!)
        cell.productPhone?.text = String(product.productPhone!)
        cell.productDesc?.text = String(product.productDesc!)
        cell.photo?.image = UIImage (named: String(product.productImg!))
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FirstToSecondSegue" {
            if let destination = segue.destination as? SecondViewController {
                let tappedrow = self.tableView.indexPathForSelectedRow
                let product = self.testarray[tappedrow!.row]
                destination.passedproduct = product
            }

    }



}
}
