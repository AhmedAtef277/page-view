//
//  ViewController.swift
//  PageVcWithOneVc
//
//  Created by mac on 16/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var discription: UILabel!
    var hed : String?
    var disc : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        header.text = hed ?? "header is empty"
        discription.text = disc ?? "discription is empty"

    }
    


}

