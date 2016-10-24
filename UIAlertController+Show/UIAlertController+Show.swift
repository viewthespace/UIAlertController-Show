//
//  UIAlertController+Show.swift
//  UIAlertController+Show
//
//  Created by Erik Ackermann on 1/20/16.
//
//

import Foundation
import UIKit
import ObjectiveC

private var alertWindowAssociationKey: UInt8 = 0

extension UIAlertController {

    var alertWindow: UIWindow? {
        get {
            return objc_getAssociatedObject(self, &alertWindowAssociationKey) as? UIWindow
        }
        set(newValue) {
            objc_setAssociatedObject(self, &alertWindowAssociationKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    @objc public func show() {
        show(true, completion: nil)
    }

    @objc public func show(_ animated: Bool) {
        show(animated)
    }
  
    @objc public func show(_ animated: Bool, completion: (() -> Swift.Void)? = nil) {
        self.alertWindow = UIWindow(frame: UIScreen.main.bounds)
        self.alertWindow?.rootViewController = UIViewController()
        self.alertWindow?.windowLevel = UIWindowLevelAlert + 1
        self.alertWindow?.makeKeyAndVisible()
        self.alertWindow?.rootViewController?.present(self, animated: animated, completion: completion)
    }

    override open func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        self.alertWindow?.isHidden = true
        self.alertWindow = nil
    }
}
