//
//  Welcome Screen.swift
//  app1_ngshah3
//
//  Created by Nishit Shah on 2024-02-04.
//

import UIKit

class Welcome_Screen: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var collegeImageView: UIImageView!
    @IBOutlet weak var imageSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize the welcome message
        welcomeLabel.text = "Welcome to Seneca College Admission App!\nExplore, Register, and Join our vibrant community."

        // Customize the college image
        collegeImageView.image = UIImage(named: "front") // Make sure to add your image to the Assets.xcassets

    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        let selectedSegmentIndex = imageSegmentedControl.selectedSegmentIndex
        var imageName = ""
        
        switch selectedSegmentIndex {
        case 0:
            imageName = "front"
        case 1:
            imageName = "commons"
        case 2:
            imageName = "cafe"
        case 3:
            imageName = "gym"
        default:
            break
        }
        
        collegeImageView.image = UIImage(named: imageName)
    }
    
    

}
