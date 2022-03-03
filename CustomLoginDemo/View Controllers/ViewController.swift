//
//  ViewController.swift
//  CustomLoginDemo
//
//  Created by Maximillian Mata on 2/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: FloatingLabelInput!
    
    @IBOutlet weak var lastNameLabel: FloatingLabelInput!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var popUpButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        // Style the elements
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(loginButton)
//        view.backgroundColor = UIColor.init(red: 0.07, green: 0.73, blue: 0.93, alpha: 1.00)
        self.firstNameLabel.addBottomBorder()
        self.lastNameLabel.addBottomBorder()
        
        setGenderPopUpButton()
    }

    
    
    func setGenderPopUpButton(){
        let optionClosure = {(action : UIAction) in print(action.title)}
        let menuOptions = ["--", "Male", "Female", "Unidentified"]
        
        
        popUpButton.menu = UIMenu(children : [
            
            UIAction(title : menuOptions[0], state: .on, handler: optionClosure),
            UIAction(title : menuOptions[1], handler: optionClosure),
            UIAction(title : menuOptions[2], handler: optionClosure),
            UIAction(title : menuOptions[3], handler: optionClosure),
        ])
        popUpButton.showsMenuAsPrimaryAction = true
        popUpButton.changesSelectionAsPrimaryAction = true
      }
                                  
        

}

