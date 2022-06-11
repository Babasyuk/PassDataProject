//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Артём on 11.01.2022.
//  Copyright © 2022 Артём Бабасюк. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login : String? 
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        
        label.text = "Hello, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
