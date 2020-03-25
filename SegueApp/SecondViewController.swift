//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Faridho on 11/03/20.
//  Copyright © 2020 Faridho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myNameLabel: UILabel!
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myNameLabel.text = myName
    }
    

}
