//
//  UIKitViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 28.02.2022.
//

import UIKit

class UIKitViewController: UIViewController {
    
    struct TableViewSectionModel {
        var title:String
        var items:[TableViewItemModel] = []
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
    
//    enum SectionType {
//        case Alert
//        case Segment
//        case Switch
//    }
//
    
    @IBOutlet var tableView: UITableView!
    
    var structCells:[TableViewItemModel] = []
    var cells:[TableViewSectionModel] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "AlertTableViewCell", bundle: nil), forCellReuseIdentifier: "AlertCell")
        tableView.register(UINib(nibName: "SegmentTableViewCell", bundle: nil), forCellReuseIdentifier: "SegmentCell")
        tableView.register(UINib(nibName: "SwitchTableViewCell", bundle: nil), forCellReuseIdentifier: "SwitchCell")
        
        structCells.append(TableViewItemModel(cellType: .alert, label: "First Alert"))
        structCells.append(TableViewItemModel(cellType: .alert, label: "Second Alert"))
        structCells.append(TableViewItemModel(cellType: .alert, label: "Third Alert"))
        structCells.append(TableViewItemModel(cellType: .segment, label: "First Segment"))
        structCells.append(TableViewItemModel(cellType: .segment, label: "Second Segment"))
        structCells.append(TableViewItemModel(cellType: .segment, label: "Third Segment "))
        structCells.append(TableViewItemModel(cellType: .switchh, label: "First Switch"))
        structCells.append(TableViewItemModel(cellType: .switchh, label: "Second Switch"))
        structCells.append(TableViewItemModel(cellType: .switchh, label: "Third Switch"))
        
//        cells.append(TableViewSectionModel(title: "Alert", items: [TableViewItemModel(cellType: .alert, label: "Deneme alert")]))
//        cells.append(TableViewSectionModel(title: "Alert", items: [TableViewItemModel(cellType: .alert, label: "Deneme alert")]))
//        cells.append(TableViewSectionModel(title: "Alert", items: [TableViewItemModel(cellType: .alert, label: "Deneme alert")]))
//        cells.append(TableViewSectionModel(title: "Segment", items: [TableViewItemModel(cellType: .segment, label: "Deneme segment")]))
//        cells.append(TableViewSectionModel(title: "Segment", items: [TableViewItemModel(cellType: .segment, label: "Deneme segment")]))
//        cells.append(TableViewSectionModel(title: "Segment", items: [TableViewItemModel(cellType: .segment, label: "Deneme segment")]))
//        cells.append(TableViewSectionModel(title: "Switch",  items: [TableViewItemModel(cellType: .switchh, label: "Deneme switch")]))
//        cells.append(TableViewSectionModel(title: "Switch", items: [TableViewItemModel(cellType: .switchh, label: "Deneme switch")]))
//        cells.append(TableViewSectionModel(title: "Switch", items: [TableViewItemModel(cellType: .switchh, label: "Deneme switch")]))
    }
    
    
    //    func SectionModel(){
    //        var alertSectionModel = TableViewSectionModel(title: "Alert Section", items: [TableViewItemModel(cellType: .alert, label: "Alert")])
    //    }
    
    
    
    func simpleAlertFunc() {
        let title = "Simple Alert Title"
        let message = "This is Simple Alert message"
        let simpleAlertCancelButton = "OK"
        
        let simpleAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let simpleAlertCancelAction = UIAlertAction(title: simpleAlertCancelButton, style: .cancel) { _ in
            Swift.debugPrint("Simple Alert Cancel")
        }
        
        simpleAlertController.addAction(simpleAlertCancelAction)
        
        present(simpleAlertController, animated: true, completion: nil)
    }
}

extension UIKitViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return structCells.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if structCells[indexPath.row].cellType == .alert {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AlertCell", for: indexPath) as! AlertTableViewCell
            cell.label.text = structCells[indexPath.row].label
            return cell
        }
        else if structCells[indexPath.row].cellType == .segment {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SegmentCell", for: indexPath) as! SegmentTableViewCell
            cell.label.text = structCells[indexPath.row].label
            return cell
        }
        else  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchCell", for: indexPath) as! SwitchTableViewCell
            let label = structCells[indexPath.row].label
            cell.label.text = label
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if structCells[indexPath.row].cellType == .alert {
            simpleAlertFunc()
        }
    }
    
}
