//
//  Extensions.swift
//  DTCoreTextExample
//
//  Created by John Codeos on 10/07/2019.
//  Copyright © 2019 John Codeos. All rights reserved.
//

import Foundation
import DTCoreText

extension String {
    //Use of DTCoreText library to convert html to String.
    public func returnAttributedStringForHTMLString (fontFamily: String, fontName: String, fontSize: CGFloat, textColor: UIColor, textAlignment: CTTextAlignment) -> NSMutableAttributedString {
        let encodedData = self.data(using: String.Encoding.utf8)!
        let options = [
            DTDefaultFontFamily:fontFamily,
            DTDefaultFontName: fontName,
            DTDefaultFontSize: fontSize,
            DTDefaultTextColor: textColor,
            DTDefaultTextAlignment: NSNumber(value: textAlignment.rawValue)
            ] as [String : Any]
        let builder = DTHTMLAttributedStringBuilder(html: encodedData, options: options, documentAttributes: nil)
        var returnValue:NSAttributedString?
        returnValue = builder?.generatedAttributedString()
        if returnValue != nil {
            //needed to show link highlighting
            let mutable = NSMutableAttributedString(attributedString: returnValue!)
            mutable.removeAttribute(NSAttributedString.Key.foregroundColor, range: NSMakeRange(0, mutable.length))
            return mutable
        }else{
            return NSMutableAttributedString(string: "")
        }
    }
}
