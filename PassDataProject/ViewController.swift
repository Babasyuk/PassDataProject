//
//  ViewController.swift
//  PassDataProject
//
//  Created by Артём on 10.01.2022.
//  Copyright © 2022 Артём Бабасюк. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard let svc = segue.source as? SecondViewController else { return }
        self.resultLabel.text = svc.label.text
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // метод вызывается при нажатии на segue
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTF.text 
    }
    
    
}

