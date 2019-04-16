//
//  ViewController.swift
//  morsecode
//
//  Created by Jin Seok Ahn on 4/15/19.
//  Copyright © 2019 Jin Seok Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var outputText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitPressed(_ sender: Any) {
        self.outputText.text = convertToMorse(input: self.inputText.text ?? "") ?? "Please Input Alphanumeric Values Only"
    }
    
}

