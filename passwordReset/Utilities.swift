//
//  Utilities.swift
//  passwordReset
//
//  Created by Akanksha.A on 12/07/22.
//

import Foundation
import UIKit
class Utilities {
    var images = [#imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "circle")]
    func getMissingValidation(newPassword: String) -> [UIImage]? {
        images[0] = (NSPredicate(format:"SELF MATCHES %@", ".*[0-9]+.*").evaluate(with: newPassword) ? changeToCheckmark() : changeToCircle())!
        images[1] = (NSPredicate(format:"SELF MATCHES %@", ".*[a-z]+.*").evaluate(with: newPassword) ? changeToCheckmark() : changeToCircle())!
        images[2] = (NSPredicate(format:"SELF MATCHES %@", ".*[A-Z]+.*").evaluate(with: newPassword) ? changeToCheckmark() : changeToCircle())!
        images[3] = (NSPredicate(format:"SELF MATCHES %@", ".*[!&^%$#@()/]+.*").evaluate(with: newPassword) ? changeToCheckmark() : changeToCircle())!
        images[4] = (newPassword.count >= 8 && newPassword.count <= 16 ? changeToCheckmark() : changeToCircle())!
        return images
    }
    func changeToCheckmark() -> UIImage? {
        let configuration = UIImage.SymbolConfiguration(weight: .heavy)
        let image1 = UIImage(systemName: "checkmark", withConfiguration: configuration)?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
        return image1
    }
    func changeToCircle() -> UIImage? {
        let image1 = UIImage(systemName: "circle.fill")?.withTintColor(.systemGray, renderingMode: .alwaysOriginal)
        return image1
    }
}
