//
//  TableDataSource.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/26/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit

typealias SelectedRow = (model: Any, path: IndexPath)
typealias SectionRow = (model: Any, identifier: String)

struct TableViewSection {
    var rows = [SectionRow]()
}

class TableDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    private weak var tableView: UITableView?
    private var sections = [TableViewSection]()
    
    init(_ tableView: UITableView?) {
        super.init()
        
        self.tableView = tableView
        
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.estimatedRowHeight = 30
        tableView?.rowHeight = UITableViewAutomaticDimension
        
        self.registerTableViewCells(tableView)
    }
    
    public func registerTableViewCells(_ tableView: UITableView?) { }
    public func didSelect(row: SelectedRow) { }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let (value, reusableId) = self.sections[indexPath.section].rows[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableId, for: indexPath)
        self.configureCell(tableCell: cell, withValue: value)
        
        return cell
    }
    
    final func register<Cell>(cellType: Cell.Type, for tableView: UITableView?)
        where Cell:ReusableCellType, Cell:UITableViewCell {
            tableView?.registerCell(cellClass: cellType)
    }
    
    private func configureCell(tableCell cell: UITableViewCell, withValue value: Any) {
        guard let castableCell = cell as? FillCellType else {
            return
        }
        
        castableCell.tryFill(with: value)
    }
}
