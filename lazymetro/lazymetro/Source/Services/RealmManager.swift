//
//  RealmManager.swift
//  lazymetro
//
//  Created by с on 2/26/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RealmSwift

class RealmManager {
    let add = PublishSubject<[Any]>()
    
    private let disposeBag = DisposeBag()
    
    init() {
        self.bind()
    }
    
    private func bind() {
//        self.add
//            .subscribe { self.saveData($0) }
//            .disposed(by: disposeBag)
    }
    
    private func saveData(_ model: [Any]) {
        
    }
    
    private func loadData() {
        
    }
}
