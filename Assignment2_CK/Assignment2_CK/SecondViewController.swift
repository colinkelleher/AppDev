//
//  SecondViewController.swift
//  Assignment2_CK
//
//  Created by Colin Kelleher on 20/11/2020.
//  Copyright © 2020 Colin Kelleher. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var passedproduct: product?
    
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let passedInformation = passedproduct{
            self.productTitle?.text = passedInformation.productTitle!
            self.productDescription?.text = passedInformation.productDesc!
            self.phoneNumber?.text = passedInformation.productPhone!
            self.productPrice?.text = String(passedInformation.productPrice!)
            self.productImage?.image = UIImage (named: String(passedInformation.productImg!))
        }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



