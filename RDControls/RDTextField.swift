//
//  RDTextField.swift
//  
//
//  Created by  Ronit D. on 8/17/20.
//

/*
 MIT License

 Copyright (c) 2020 Ronit Dhingra

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import UIKit

/// The RDTextField is a stylish text field that gives your UI a cool and modern look. Fully customizable for the developer to give a natural feel and look.
class RDTextField: UITextField {
    
    var textFieldColor: CGColor = .rd1().cgColor
    
    var placeholderTextColor: UIColor = .rd1()
    
    // Create the bottom line
    let bottomLine = CALayer()
    
    // Remove border on text field
    self.borderStyle = .none
    
    // Add the line to the text field
    self.layer.addSublayer(bottomLine)
    
    init?(textFieldColor tfc: UIColor!, placeholderTextColor ptc: UIColor?, placeholderText pt: String?) {
        self.textFieldColor = tfc.cgColor
        self.placeholderTextColor = ptc
        self.placeholderText = pt
        
        // Activate the placeholder text color changes
        self.attributedPlaceholder = NSAttributedString(string: pt, attributes: [NSAttributedStringKey.foregroundColor: ptc])
    }
    
    init?(textFieldColor tfc: CGColor, placeholderTextColor ptc: UIColor, placeholderText pt: String?) {
        self.textFieldColor = tfc
        self.placeholderTextColor = ptc
        self.placeholderText = pt
        
        // Activate the placeholder text color changes
        self.attributedPlaceholder = NSAttributedString(string: pt, attributes: [NSAttributedStringKey.foregroundColor: ptc])
    }
    
    init() {
        bottomLine.frame = CGRect(x: 0, y: self.frame.height - 2, width: self.frame.width, height: 2)
        bottomLine.backgroundColor = textFieldColor
    }
}
