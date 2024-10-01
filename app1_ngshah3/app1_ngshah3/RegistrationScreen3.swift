//
//  RegistrationScreen3.swift
//  app1_ngshah3
//
//  Created by Nishit Shah on 2024-02-04.
//

import UIKit

class RegistrationScreen3: UIViewController {
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    var name = ""
    var phoneNumber = ""
    var age = 0
    var email = ""
    var selectedCourses: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
                
        detailsLabel.text = """
                Name: \(name)
                Phone Number: \(phoneNumber)
                Age: \(age)
                Email: \(email)
                """
    }
}
