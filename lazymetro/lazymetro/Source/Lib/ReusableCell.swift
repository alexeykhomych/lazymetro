//
//  ReusableCell.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/26/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import Foundation

public protocol FillCellType: class {
    /**
     Do not implement this method to prevent overriding of default realization
     */
    func tryFill(with model: Any)
}


protocol ReusableCellType: FillCellType {
    associatedtype Value
    static var reuseIdentifier: String { get }
    func fill(with model: Value)
}


extension ReusableCellType {
    func tryFill(with model: Any) {
        if let castedModel = model as? Value {
            fill(with: castedModel)
        } else {
            Log("Cannot fill cell: \(self). Expected model type is \(Value.self), but received \(type(of: model))")
        }
    }
}
