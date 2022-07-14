//
//  ViewController.swift
//  passwordReset
//
//  Created by Akanksha.A on 12/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var second: UILabel!
    @IBOutlet weak var third: UILabel!
    @IBOutlet weak var fourth: UILabel!
    @IBOutlet weak var fifth: UILabel!
    let utilities = Utilities()
    var allImages = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func textChanged(_ sender: UITextField) {
        allImages = utilities.getMissingValidation(newPassword: sender.text ?? "")
        first.text = allImages[0]
        second.text = allImages[1]
        third.text = allImages[2]
        fourth.text = allImages[3]
        fifth.text = allImages[4]
    }
}

