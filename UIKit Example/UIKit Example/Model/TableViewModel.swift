//
//  TableViewModel.swift
//  UIKit Example
//
//  Created by Emre Alpago on 3.03.2022.
//

import Foundation


struct TableViewSectionModel {
    var title:String
    var items:[TableViewItemModel?] = []
}

struct TableViewItemModel {
    var cellType:CellType
    var label:String
}

enum CellType {
    case alert
    case segment
    case switchh
}
