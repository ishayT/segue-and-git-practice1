//
//  SecondViewController.swift
//  Git Protocol Deligatte Exp
//
//  Created by Ishay on 2/10/18.
//  Copyright © 2018 Ishay. All rights reserved.
//

import UIKit

protocol CanRecive {
    
    func dataRecived(data: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var label2VC: UILabel!
    @IBOutlet weak var textField2VC: UITextField!
    
    var data = ""
    var delegate : CanRecive?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label2VC.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goTo1VC(_ sender: UIButton) {
        
        delegate?.dataRecived(data: textField2VC.text!)
        dismiss(animated: true, completion: nil)
    }
    

}

//bla balaaa trying to merge

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */
