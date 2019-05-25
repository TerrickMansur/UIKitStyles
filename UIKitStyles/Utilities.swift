//
//  Utilities.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/24/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

extension UIControl.State: Hashable {
    public var hashValue: Int { return Int(rawValue) }
}
