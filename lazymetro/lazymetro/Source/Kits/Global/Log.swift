//
//  Log.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/23/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import Foundation

func Log(_ message: String) {
    #if DEBUG
        print(message)
    #else
    #endif
}

func IF_DEBUG(_ block: ()->()) {
    #if DEBUG
        block()
    #else
    #endif
}
