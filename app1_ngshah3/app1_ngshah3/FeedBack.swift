//
//  FeedBack.swift
//  app1_ngshah3
//
//  Created by Nishit Shah on 2024-02-04.
//

import UIKit

class FeedBack: UIViewController {
    var progressBar: UIProgressView!
    var tapButton: UIButton!
    var progressValue: Float = 0.0

    @IBAction func b1(_ sender: Any) {
        buttonTapped()
    }
    @IBAction func b2(_ sender: Any) {
        buttonTapped()
    }
    @IBAction func b3(_ sender: Any) {
        buttonTapped()
    }
    @IBAction func b4(_ sender: Any) {
        buttonTapped()
    }
    @IBAction func b5(_ sender: Any) {
        buttonTapped()
    }
    @IBAction func b6(_ sender: Any) {
        buttonTapped()
    }
    @IBAction func b7(_ sender: Any) {
        buttonTapped()
    }
    @IBAction func b8(_ sender: Any) {
        buttonTapped()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar = UIProgressView(progressViewStyle: .default)
        progressBar.frame = CGRect(x: 50, y: 590, width: 289, height: 20)
        progressBar.progress = progressValue
        view.addSubview(progressBar)
        
        //tapButton = UIButton(type: .system)
        //tapButton.setTitle("Tap Me", for: .normal)
        //tapButton.frame = CGRect(x: 150, y: 200, width: 80, height: 40)
        //tapButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        //view.addSubview(tapButton)
    }
    
    @objc func buttonTapped() {
        progressValue += 0.25
        progressBar.setProgress(progressValue, animated: true)
    }
}
