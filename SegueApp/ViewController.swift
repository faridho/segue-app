//
//  ViewController.swift
//  SegueApp
//
//  Created by Faridho on 11/03/20.
//  Copyright © 2020 Faridho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myText: UITextField!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //run on the background
    override func viewWillDisappear(_ animated: Bool) {
        print("disappear loaded")
        myText.text = ""
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = myText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

