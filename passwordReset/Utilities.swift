//
//  Utilities.swift
//  passwordReset
//
//  Created by Akanksha.A on 12/07/22.
//

import Foundation
import UIKit
class Utilities {
//    var images = [#imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "circle")]
    var labels = ["","","","","",""]
    func getMissingValidation(newPassword: String) -> [String] {
        labels[0] = (NSPredicate(format:"SELF MATCHES %@", ".*[0-9]+.*").evaluate(with: newPassword) ? changeToCheckmark() : changeToCircle())
        labels[1] = (NSPredicate(format:"SELF MATCHES %@", ".*[a-z]+.*").evaluate(with: newPassword) ? changeToCheckmark() : changeToCircle())
        labels[2] = (NSPredicate(format:"SELF MATCHES %@", ".*[A-Z]+.*").evaluate(with: newPassword) ? changeToCheckmark() : changeToCircle())
        labels[3] = (NSPredicate(format:"SELF MATCHES %@", ".*[!&^%$#@()/]+.*").evaluate(with: newPassword) ? changeToCheckmark() : changeToCircle())
        labels[4] = (newPassword.count >= 8 && newPassword.count <= 16 ? changeToCheckmark() : changeToCircle())
        return labels
    }
    func changeToCheckmark() -> String {
        let str = "✔"
        return str
    }
    func changeToCircle() -> String {
        let str = "●"
        return str
    }
}
