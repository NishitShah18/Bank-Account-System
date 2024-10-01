//
//  RegistrationScreen2.swift
//  app1_ngshah3
//
//  Created by Nishit Shah on 2024-02-04.
//

import UIKit

class RegistrationScreen2: UIViewController {
    
    @IBOutlet weak var courseCppSwitch: UISwitch!
    @IBOutlet weak var courseCpaSwitch: UISwitch!
    @IBOutlet weak var courseSpcSwitch: UISwitch!
    @IBOutlet weak var courseItcSwitch: UISwitch!
    
    var name = ""
    var phoneNumber = ""
    var age = 0
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let svc = segue.destination as? RegistrationScreen3 else {return}
        
        svc.age = age
        svc.name = name
        svc.phoneNumber = phoneNumber
        svc.email = email
    }

}
