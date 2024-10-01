//
//  RegistrationScreen1.swift
//  app1_ngshah3
//
//  Created by Nishit Shah on 2024-02-04.
//

import UIKit

class RegistrationScreen1: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ageSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        phoneNumberTextField.text = ""
        emailTextField.text = ""
        ageSlider.value = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let svc = segue.destination as? RegistrationScreen2 else {return}
        
        let name = "\(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "")"
        let phoneNumber = phoneNumberTextField.text ?? ""
        let age = Int(ageSlider.value)
        let email = emailTextField.text ?? ""
        
        svc.name = name
        svc.phoneNumber = phoneNumber
        svc.age = age
        svc.email = email
    }

}
