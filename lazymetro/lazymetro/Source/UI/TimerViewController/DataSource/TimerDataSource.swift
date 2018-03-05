//
//  TimerDataSource.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/26/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit

class TimerDataSource: TableDataSource {
    
    // MARK: - Init
    
    override init(_ tableView: UITableView?) {
        super.init(tableView)
    }
    
    override func registerTableViewCells(_ tableView: UITableView?) {
        tableView?.registerCell(cellClass: TimerTableViewCell.self)
    }
}
