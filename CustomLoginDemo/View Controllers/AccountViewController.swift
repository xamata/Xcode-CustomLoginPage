//
//  AccountViewController.swift
//  CustomLoginDemo
//
//  Created by Maximillian Mata on 2/24/22.
//

import UIKit
import FloatingLabelTextFieldSwiftUI
import SwiftUI

class AccountViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
  

    @IBOutlet weak var firsNameTextField: FloatingLabelInput!
    @IBOutlet weak var uploadProfileImage: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var lastNameTextField: FloatingLabelInput!
    @IBOutlet weak var userNameTextField: FloatingLabelInput!
    @IBOutlet weak var birthdayTextField: FloatingLabelInput!
    @IBOutlet weak var adressLine1TextField: FloatingLabelInput!
    @IBOutlet weak var adressLine2TextField: FloatingLabelInput!
    @IBOutlet weak var cityTextField: FloatingLabelInput!
    @IBOutlet weak var zipCodeTextField: FloatingLabelInput!
    @IBOutlet weak var phoneTextField: FloatingLabelInput!
    @IBOutlet weak var websiteTextField: FloatingLabelInput!
    @IBOutlet weak var bioTextField: FloatingLabelInput!
    @IBOutlet weak var saveAccountButton: UIButton!
    @IBOutlet weak var genderPopUpButton: UIButton!
    @IBOutlet weak var statesPickerViewButton: UIButton!
    @IBOutlet weak var statesUnderlineTextField: FloatingLabelInput!
    @IBOutlet weak var genderUnderlineTextField: FloatingLabelInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
        setUpPopUpButton()
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
        self.cityTextField.addBottomBorder()
        self.zipCodeTextField.addBottomBorder()
        self.bioTextField.addBottomBorder()
        self.statesUnderlineTextField.addBottomBorder()
        self.genderUnderlineTextField.addBottomBorder()
    }
    
    
    //Creates the menu for the Gender Pop Up Button
    func setUpPopUpButton(){
        let optionClosure = {(action : UIAction) in print(action.title)}
        let menuOptions = ["Non-Binary", "Female", "Male"]
        genderPopUpButton.menu = UIMenu(children : [
            UIAction(title: menuOptions[0], state: .on, handler: optionClosure),
            UIAction(title: menuOptions[1], handler: optionClosure),
            UIAction(title: menuOptions[2], handler: optionClosure),
        ])
        genderPopUpButton.showsMenuAsPrimaryAction = true
        genderPopUpButton.changesSelectionAsPrimaryAction = true
    }

    //States Picker View
    let screenWidth = UIScreen.main.bounds.width - 10
    let screenHeight = UIScreen.main.bounds.height / 2
    var selectedRow = 0
    
    var pickerStates = ["AK - Alaska", "AL - Alabama", "AR - Arkansas","AS - American Samoa","AZ - Arizona","CA - California","CO - Colorado","CT - Connecticut","DC - District of Columbia","DE - Delaware","FL - Florida","GA - Georgia","GU - Guam","HI - Hawaii","IA - Iowa", "ID - Idaho","IL - Illinois","IN - Indiana","KS - Kansas","KY - Kentucky","LA - Louisiana","MA - Massachusetts", "MD - Maryland","ME - Maine","MI - Michigan","MN - Minnesota", "MO - Missouri", "MS - Mississippi","MT - Montana","NC - North Carolina","ND - North Dakota","NE - Nebraska","NH - New Hampshire", "NJ - New Jersey", "NM - New Mexico","NV - Nevada","NY - New York","OH - Ohio","OK - Oklahoma","OR - Oregon","PA - Pennsylvania", "PR - Puerto Rico","RI - Rhode Island", "SC - South Carolina","SD - South Dakota","TN - Tennessee","TX - Texas","UT - Utah","VA - Virginia","VI - Virgin Islands","VT - Vermont","WA - Washington","WI - Wisconsin", "WV - West Virginia","WY - Wyoming"]
    @IBAction func statesPickerView(_ sender: Any) {
        let vc = UIViewController()
        vc.preferredContentSize = CGSize(width: screenWidth, height: screenHeight)
        let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        pickerView.dataSource = self
        pickerView.delegate = self
        
        // whatever we selected, is what is shown in picker view
        pickerView.selectRow(selectedRow, inComponent: 0, animated: false)
        
        // puts PickerView in the dead middle
        vc.view.addSubview(pickerView)
        pickerView.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor).isActive = true
        pickerView.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor).isActive = true
        
        let alert = UIAlertController(title: "Select State", message: "", preferredStyle: .actionSheet)
        
        alert.popoverPresentationController?.sourceView = statesPickerViewButton
        alert.popoverPresentationController?.sourceRect = statesPickerViewButton.bounds
        
        alert.setValue(vc, forKey: "contentViewController")
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { UIAlertAction in
        }))
        alert.addAction(UIAlertAction(title: "Select", style: .default, handler: { UIAlertAction in
            self.selectedRow = pickerView.selectedRow(inComponent: 0)
            let selected = self.pickerStates[self.selectedRow]
            let name = selected
            self.statesPickerViewButton.setTitle(name, for: .normal)
        }))
        self.present(alert,animated: true, completion: nil)
    }
    
    
   
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 30))
        label.text = pickerStates[row]
        return label
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerStates.count
    }
    // height of each of our picker view components
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }

    /*
    // MARK: - Navigation
*/
}
