//
//  TWCheckButton.swift
//  TWCheckButton
//
//  Created by kimtaewan on 2015. 12. 23..
//  Copyright © 2015년 prnd. All rights reserved.
//

import Foundation
import UIKit

private struct AssociatedKeys {
    static var isRadio = "isRadio"
}

class TWCheckButton: UIButton {
    @IBInspectable var name: String?
    
    var _hd_group: [TWCheckButton]?
    var checked: Bool {
        get {
            return self.selected
        }
        set {
            guard let group = _hd_group else { return }
            if newValue && group.hd_group_isRadio {
                for button in group.hd_group_checked() {
                    button.selected = false
                }
            }
            self.selected = newValue
        }
    }
}

extension Array where Element:TWCheckButton  {
    
    var hd_group_isRadio: Bool {
        get {
            guard let number = objc_getAssociatedObject(self, &AssociatedKeys.isRadio) as? NSNumber else { return false }
            return number.boolValue
        }
        set(value) {
            objc_setAssociatedObject(self, &AssociatedKeys.isRadio, NSNumber(bool: value), objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            guard value else { return } //value가 false 면 return!
            for button in self {
                button._hd_group = self
            }
        }
    }
    
    func hd_group_checked() -> [TWCheckButton] {
        var results = [HDCheckButton]()
        for button: TWCheckButton in self {
            if button.checked { results.append(button) }
        }
        return results
    }
}
