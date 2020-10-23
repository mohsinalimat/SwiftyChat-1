//
//  UIFont+Extension.swift
//  
//
//  Created by Enes Karaosman on 27.07.2020.
//

import SwiftUI

#if os(iOS)
import UIKit
internal extension UIFont {
    func withWeight(_ weight: UIFont.Weight) -> UIFont {
        let newDescriptor = fontDescriptor.addingAttributes([.traits: [
                                                                UIFontDescriptor.TraitKey.weight: weight]
        ])
        return UIFont(descriptor: newDescriptor, size: pointSize)
    }
}
#elseif os(macOS)
import Cocoa
internal extension NSFont {
    func withWeight(_ weight: NSFont.Weight) -> NSFont {
        let newDescriptor = fontDescriptor.addingAttributes([
            .traits: [NSFontDescriptor.TraitKey.weight: weight]
        ])
        return NSFont(descriptor: newDescriptor, size: pointSize)!
    }
}
#endif
