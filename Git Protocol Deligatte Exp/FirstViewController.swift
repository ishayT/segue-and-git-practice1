//
//  ViewController.swift
//  Git Protocol Deligatte Exp
//
//  Created by Ishay on 2/10/18.
//  Copyright © 2018 Ishay. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanRecive {
    
    @IBOutlet weak var label1VC: UILabel!
    
    @IBOutlet weak var textField1VC: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goTo2VC(_ sender: UIButton) {
        
    }
    
    func dataRecived() {
        //
    }
    
    
    
    @IBAction func chngeColor(_ sender: UIButton) {
        view.backgroundColor = UIColor.blue
    }
    
}

