//
//  CoreDataManager.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/28/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit
import CoreData
import RxCocoa
import RxSwift
import Result

enum CoreDataManagerError: Error {
    case description(String)
}

class CoreDataManager {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    init() {
        
    }
    
}
