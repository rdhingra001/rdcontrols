//
//  RDButton.swift
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

/// The RDButton is a stylish button that gives your UI a cool and modern look. Fully customizable for the developer to give a natural feel and look.
class RDButton: UIButton {
    
    var cornerRadius: Double = 15.0
    var backgroundColor: UIColor = .rd2()
    var textColor: UIColor = .rd1()
    
    init() {
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.tintColor = textColor
    }
    
    init(cornerRadius radius: Double, textColor tc: UIColor, backgroundColor bc: UIColor) {
        self.cornerRadius = radius
        self.tintColor = tc
        self.backgroundColor = bc
    }
}
