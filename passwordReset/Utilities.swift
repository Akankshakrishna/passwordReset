//
//  Utilities.swift
//  passwordReset
//
//  Created by Akanksha.A on 12/07/22.
//

import Foundation
import UIKit
class Utilities {
    func getMissingValidation(newPassword: String) -> [Bool] {
        var errors: [Bool] = [false,false,false,false,false]
        if(NSPredicate(format:"SELF MATCHES %@", ".*[0-9]+.*").evaluate(with: newPassword)){
            errors[0] = true
        }
        if(NSPredicate(format:"SELF MATCHES %@", ".*[a-z]+.*").evaluate(with: newPassword)){
            errors[1] = true
        }
        if(NSPredicate(format:"SELF MATCHES %@", ".*[A-Z]+.*").evaluate(with: newPassword)){
            errors[2] = true
        }
        if(NSPredicate(format:"SELF MATCHES %@", ".*[!&^%$#@()/]+.*").evaluate(with: newPassword)){
            errors[3] = true
        }
        if(newPassword.count >= 8 && newPassword.count <= 16){
            errors[4] = true
        }
        return errors
    }
    func changeToCheckmark() -> UIImage? {
        let image1 = UIImage(systemName: "checkmark")?.withTintColor(.systemGreen)
        return image1
    }
    func changeToCircle() -> UIImage? {
        let image1 = UIImage(systemName: "circle.fill")?.withTintColor(.systemGray)
        return image1
    }
}
