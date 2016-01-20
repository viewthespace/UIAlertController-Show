//
//  UIAlertController+Show.swift
//  UIAlertController+Show
//
//  Created by Erik Ackermann on 1/20/16.
//
//

import Foundation
import ObjectiveC

private var alertWindowAssociationKey: UInt8 = 0

public extension UIAlertController {

    var alertWindow: UIWindow? {
        get {
            return objc_getAssociatedObject(self, &alertWindowAssociationKey) as? UIWindow
        }
        set(newValue) {
            objc_setAssociatedObject(self, &alertWindowAssociationKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    public func show(animated: Bool = true) {
        self.alertWindow = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.alertWindow?.rootViewController = UIViewController()
        self.alertWindow?.windowLevel = UIWindowLevelAlert + 1
        self.alertWindow?.makeKeyAndVisible()
        self.alertWindow?.rootViewController?.presentViewController(self, animated: animated, completion: nil)
    }

    override public func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)

        self.alertWindow?.hidden = true
        self.alertWindow = nil
    }
}
