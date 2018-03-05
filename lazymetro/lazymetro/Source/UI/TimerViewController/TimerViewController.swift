//
//  TimerViewViewController.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/14/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

import IDPRootViewGettable

class TimerViewController<V: TimerViewModelType>: UIViewController, Controller {

    typealias RootViewType = TimerView
    typealias ViewModelType = V
    
    private let viewModel   : ViewModelType
    private var bag         = DisposeBag()
    private var dataSource  : TimerDataSource?
    
    required public init(_ viewModel: ViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: "TimerViewViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        Log("DEINIT " + String(describing: type(of: self)))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configure(with: viewModel)
    }

    func configure(with viewModel: ViewModelType) {
        guard let rootView = self.rootView else { return }
        
        let bag = self.bag
        
        rootView.addButton?.rx.tap
            .bind(to: viewModel.tapAdd)
            .disposed(by: bag)
        
        rootView.resetButton?.rx.tap
            .bind(to: viewModel.tapReset)
            .disposed(by: bag)
        
//        viewModel.timer
//            .drive(rootView.timerALabel.rx.text)
//            .disposed(by: bag)
    }
    
}
