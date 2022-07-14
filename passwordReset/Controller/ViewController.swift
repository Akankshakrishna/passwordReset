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
    @IBOutlet weak var first: UIImageView!
    @IBOutlet weak var second: UIImageView!
    @IBOutlet weak var third: UIImageView!
    @IBOutlet weak var fourth: UIImageView!
    @IBOutlet weak var fifth: UIImageView!
    let utilities = Utilities()
    var allImages = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func textChanged(_ sender: UITextField) {
        allImages = utilities.getMissingValidation(newPassword: sender.text ?? "")!
        first.image = allImages[0]
        second.image = allImages[1]
        third.image = allImages[2]
        fourth.image = allImages[3]
        fifth.image = allImages[4]
    }
}

