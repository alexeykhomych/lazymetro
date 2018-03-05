//
//  TimerViewModel.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/14/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RealmSwift

protocol TimerViewModelType: ViewModel {
    var tapStationA : PublishSubject<Void> { get }
    var tapStationB : PublishSubject<Void> { get }
    var tapAdd      : PublishSubject<Void> { get }
    var tapReset    : PublishSubject<Void> { get }
    
//    var timer: Driver<String> { get }
    
    //change Any to DataSource
    func dataSource(_ table: UITableView?) -> TimerDataSource
}

final class TimerViewModel: TimerViewModelType {
    
    let tapStationA     = PublishSubject<Void>()
    let tapStationB     = PublishSubject<Void>()
    let tapAdd          = PublishSubject<Void>()
    let tapReset        = PublishSubject<Void>()
    
//    let timer: Driver<String>
    let title: String? = "Timer"
    
    private let coreDataManager: CoreDataManager
    private let model: Section
    
    init(model: Section, coreDataManager: CoreDataManager) {
        self.coreDataManager = coreDataManager
        self.model = model
//        self.timer = Driver.of(model.time)
        
        self.prepareBinds()
    }
    
    func dataSource(_ tableView: UITableView?) -> TimerDataSource {
        return TimerDataSource(tableView)
    }
    
    private func prepareBinds() {
    
    }
}
