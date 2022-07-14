//
//  ViewController.swift
//  passwordReset
//
//  Created by Akanksha.A on 12/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var first: UIImageView!
    @IBOutlet weak var second: UIImageView!
    @IBOutlet weak var third: UIImageView!
    @IBOutlet weak var fourth: UIImageView!
    @IBOutlet weak var fifth: UIImageView!
    let utilities = Utilities()
    var notSatisfied = [Bool]()
    override func viewDidLoad() {
        super.viewDidLoad()
        first.image = utilities.changeToCircle()
        second.image = utilities.changeToCircle()
        third.image = utilities.changeToCircle()
        fourth.image = utilities.changeToCircle()
        fifth.image = utilities.changeToCircle()
        
    }
   
    @IBAction func textChanged(_ sender: UITextField) {
        notSatisfied = utilities.getMissingValidation(newPassword: password.text!)
        first.image = notSatisfied[0] ? utilities.changeToCheckmark() : utilities.changeToCircle()
        second.image = notSatisfied[1] ? utilities.changeToCheckmark() : utilities.changeToCircle()
        third.image = notSatisfied[2] ? utilities.changeToCheckmark() : utilities.changeToCircle()
        fourth.image = notSatisfied[3] ? utilities.changeToCheckmark() : utilities.changeToCircle()
        fifth.image = notSatisfied[4] ? utilities.changeToCheckmark() : utilities.changeToCircle()
    }
}

