//
//  Protocol.swift
//  Bai5
//
//  Created by Cntt06 on 7/5/17.
//  Copyright © 2017 Cntt06. All rights reserved.
//

import Foundation
// Cau 5.a
protocol FullyNamed {
    var fullName: String { get }
}
struct Person: FullyNamed {
    var fullName: String = "Tran Trug Thanh"
}

// Cau 5.b
class XYZ: FullyNamed
{
    var fullName: String

    var prefix: String?
    var name: String
    init(prefix: String?, name: String,fullName: String) {
        self.prefix = prefix
        self.name = name
        if prefix != nil {
            self.fullName = prefix! + " " + fullName
        }
        else
        {
            self.fullName = fullName
        }
    }
}
