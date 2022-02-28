//
//  UIKitViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 28.02.2022.
//

import UIKit

class UIKitViewController: UIViewController {
    
//    struct TableViewSectionModel {
//        var title:String
//        var items:[TableViewItemModel] = []
//    }
    
    struct TableViewItemModel {
        var cellClass:String
        var label:String
    }
    
    @IBOutlet var tableView: UITableView!
    
    var structCells:[TableViewItemModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "AlertTableViewCell", bundle: nil), forCellReuseIdentifier: "AlertCell")
        tableView.register(UINib(nibName: "SegmentTableViewCell", bundle: nil), forCellReuseIdentifier: "SegmentCell")
        tableView.register(UINib(nibName: "SwitchTableViewCell", bundle: nil), forCellReuseIdentifier: "SwitchCell")
        structCells.append(TableViewItemModel(cellClass: "alert", label: "First Alert"))
        structCells.append(TableViewItemModel(cellClass: "alert", label: "Second Alert"))
        structCells.append(TableViewItemModel(cellClass: "segment", label: "First Segment"))
        structCells.append(TableViewItemModel(cellClass: "segment", label: "Second Segment"))
        structCells.append(TableViewItemModel(cellClass: "segment", label: "Third Segment"))
        structCells.append(TableViewItemModel(cellClass: "switch", label: "First Switch"))
        structCells.append(TableViewItemModel(cellClass: "switch", label: "Second Switch"))
        structCells.append(TableViewItemModel(cellClass: "switch", label: "Third Switch"))
    }
}

extension UIKitViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return structCells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if structCells[indexPath.row].cellClass == "alert" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AlertCell", for: indexPath) as! AlertTableViewCell
            cell.label.text = structCells[indexPath.row].label
            return cell
            
        }
        else if structCells[indexPath.row].cellClass == "segment" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SegmentCell", for: indexPath) as! SegmentTableViewCell
            cell.label.text = structCells[indexPath.row].label
            return cell
        }
        
        else  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchCell", for: indexPath) as! SwitchTableViewCell
            cell.label.text = structCells[indexPath.row].label
            return cell
        }
    }
}
