//
//  AccountViewController.swift
//  CustomLoginDemo
//
//  Created by Maximillian Mata on 2/24/22.
//

import UIKit
import FloatingLabelTextFieldSwiftUI
import SwiftUI

class AccountViewController: UIViewController {

    @IBOutlet weak var firsNameTextField: FloatingLabelInput!
    
    @IBOutlet weak var uploadProfileImage: UIButton!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var lastNameTextField: FloatingLabelInput!
    
    @IBOutlet weak var userNameTextField: FloatingLabelInput!
    
    @IBOutlet weak var genderPullDown: UIButton!
    
    @IBOutlet weak var birthdayTextField: FloatingLabelInput!
    
    @IBOutlet weak var adressLine1TextField: FloatingLabelInput!
    
    @IBOutlet weak var adressLine2TextField: FloatingLabelInput!
    
    @IBOutlet weak var phoneTextField: FloatingLabelInput!
    
    @IBOutlet weak var websiteTextField: FloatingLabelInput!
    
    @IBOutlet weak var bioTextField: FloatingLabelInput!
    
    @IBOutlet weak var saveAccountButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        Utilities.styleFilledButton(saveAccountButton)
        Utilities.circularImage(profileImage)
        Utilities.styleFilledButton(uploadProfileImage)
        
        // UITextField BorderStyle
        self.firsNameTextField.addBottomBorder()
        self.lastNameTextField.addBottomBorder()
        self.userNameTextField.addBottomBorder()
        self.birthdayTextField.addBottomBorder()
        self.adressLine1TextField.addBottomBorder()
        self.adressLine2TextField.addBottomBorder()
        self.phoneTextField.addBottomBorder()
        self.websiteTextField.addBottomBorder()
        
    }
    
    struct ContentView: View {
        
        @State private var firstName: String = ""
        
        var body: some View {
            
            FloatingLabelTextField($firstName, placeholder: "First Name", editingChanged: { (isChanged) in
                
            }) {
                
            }.frame(height: 70)
        }
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
