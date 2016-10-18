//
//  String+Padding.swift
//  StringPadding
//
//  Created by Christian Tietze on 18/10/16.
//  Copyright © 2016 CleanCocoa. All rights reserved.
//
//  Distributed under the MIT License. See LICENSE file for details.
//

import Foundation

extension String {

    public enum Padding {

        case left
        case right
        case center

        public func pad(text: String, length: Int, filler: Character = " ") -> String {

            let padding: String = {
                let byteLength = text.lengthOfBytes(using: String.Encoding.utf32) / 4

                guard length > byteLength else { return "" }

                let paddingLength = length - byteLength

                return String(repeating: String(filler), count: paddingLength)
            }()

            switch self {
            case .left:  return padding + text
            case .right: return text + padding
            case .center:
                let halfDistance = padding.distance(from: padding.startIndex, to: padding.endIndex) / 2
                let halfIndex = padding.index(padding.startIndex, offsetBy: halfDistance)
                let leftHalf = padding.substring(to: halfIndex)
                let rightHalf = padding.substring(from: halfIndex)
                return leftHalf + text + rightHalf
            }
        }
    }

    public func padded(length: Int, filler: Character = " ", padding: Padding = .right) -> String {
        
        return padding.pad(text: self, length: length, filler: filler)
    }
}
