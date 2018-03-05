//
//  ViewController.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/26/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import IDPRootViewGettable

protocol Controller: class, RootViewGettable {
    associatedtype ViewModelType: ViewModel
    
    init(_ viewModel: ViewModelType)
    
    func configure(with viewModel: ViewModelType)
}
