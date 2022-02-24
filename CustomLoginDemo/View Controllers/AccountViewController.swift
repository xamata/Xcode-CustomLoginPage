//
//  AccountViewController.swift
//  CustomLoginDemo
//
//  Created by Maximillian Mata on 2/24/22.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var firsNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var genderPullDown: UIButton!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var adressLine1TextField: UITextField!
    
    @IBOutlet weak var adressLine2TextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var websiteTextField: UITextField!
    
    @IBOutlet weak var bioTextField: UITextField!
    
    
    @IBOutlet weak var saveAccountButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
