//
//  ViewController.swift
//  barcode gen
//
//  Created by Richie Shilton on 18/12/19.
//  Copyright © 2019 Richie Shilton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var barcode: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func generateBarcode(_ sender: Any) {
        barcode.image = UIImage(string: input.text ?? "", of: .code128, and: barcode.frame.size)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        input.resignFirstResponder()
    }
}
