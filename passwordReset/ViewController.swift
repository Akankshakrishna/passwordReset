//
//  ViewController.swift
//  passwordReset
//
//  Created by Akanksha.A on 12/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstRule: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        firstRule.text = .bullet + "Buy oranges"
    }
}
extension String {
    static var bullet: String {
        return "• "
    }
}


