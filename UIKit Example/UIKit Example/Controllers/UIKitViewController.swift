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
        
        let alertItems = [TableViewItemModel(cellType: .alert, label: "Firs alert")]
        cells.append(TableViewSectionModel(title: "Alert", items: alertItems ))
        cells.append(TableViewSectionModel(title: "Segment", items: [TableViewItemModel(cellType: .segment, label: "First segment"),
                                                                     TableViewItemModel(cellType: .segment, label: "Second segment"),
                                                                     TableViewItemModel(cellType: .segment, label: "Third segment")]))
        cells.append(TableViewSectionModel(title: "Switch",  items: [TableViewItemModel(cellType: .switchh, label: "First switch"),
                                                                     TableViewItemModel(cellType: .switchh, label: "Second switch"),
                                                                     TableViewItemModel(cellType: .switchh, label: "Third switch")]))
    }
  
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
        return cells[section].items.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return cells[section].title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemModel = cells[indexPath.section].items[indexPath.row]
        switch itemModel.cellType {
        case .alert:
            let cell = tableView.dequeueReusableCell(withIdentifier: AlertTableViewCell.AlertCellIdentifier, for: indexPath) as! AlertTableViewCell
            cell.label.text = cells[indexPath.section].items[indexPath.row].label
            return cell
        case .segment:
            let cell = tableView.dequeueReusableCell(withIdentifier: SegmentTableViewCell.SegmentCellIdentifier, for: indexPath) as! SegmentTableViewCell
            cell.label.text = cells[indexPath.section].items[indexPath.row].label
            return cell
        case .switchh:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.SwitchCellIdentifier, for: indexPath) as! SwitchTableViewCell
            let label = cells[indexPath.section].items[indexPath.row].label
            cell.label.text = label
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if cells[indexPath.section].items[indexPath.row].cellType == .alert {
            simpleAlertFunc()
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
