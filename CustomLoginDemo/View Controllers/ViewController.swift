//
//  ViewController.swift
//  CustomLoginDemo
//
//  Created by Maximillian Mata on 2/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    
    
    
    func setUpElements(){
        // Style the elements
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(loginButton)
        view.backgroundColor = UIColor.init(red: 0.07, green: 0.73, blue: 0.93, alpha: 1.00)
    }


}

