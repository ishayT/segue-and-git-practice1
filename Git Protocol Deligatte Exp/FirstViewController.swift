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
        
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField1VC.text!
            
            secondVC.delegate = self
        }
    }
    
    func dataRecived(data: String) {
        label1VC.text = data
    }
    
    
    
    @IBAction func chngeColor(_ sender: UIButton) {
        view.backgroundColor = UIColor.blue
    }
    
}

