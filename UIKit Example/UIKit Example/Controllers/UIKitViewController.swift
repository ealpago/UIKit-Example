//
//  UIKitViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 28.02.2022.
//

import UIKit

class UIKitViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView?
    
    var cells:[TableViewSectionModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.register(UINib(nibName: "AlertTableViewCell", bundle: nil), forCellReuseIdentifier: "AlertCell")
        tableView?.register(UINib(nibName: "SegmentTableViewCell", bundle: nil), forCellReuseIdentifier: "SegmentCell")
        tableView?.register(UINib(nibName: "SwitchTableViewCell", bundle: nil), forCellReuseIdentifier: "SwitchCell")
        
        let alertItems = [TableViewItemModel(cellType: .alert, label: "Firs alert"),
                          TableViewItemModel(cellType: .alert, label: "Second alert"),
                          TableViewItemModel(cellType: .alert, label: "Third alert")]
        let segmentItems = [TableViewItemModel(cellType: .segment, label: "First segment"),
                            TableViewItemModel(cellType: .segment, label: "Second segment"),
                            TableViewItemModel(cellType: .segment, label: "Third segment")]
        let switchItem = [TableViewItemModel(cellType: .switchh, label: "First switch"),
                          TableViewItemModel(cellType: .switchh, label: "Second switch"),
                          TableViewItemModel(cellType: .switchh, label: "Third switch")]
        
        cells.append(TableViewSectionModel(title: "Alert", items: alertItems ))
        cells.append(TableViewSectionModel(title: "Segment", items: segmentItems ))
        cells.append(TableViewSectionModel(title: "Switch",  items: switchItem ))
    }
    
    func simpleAlertFunc(){
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
        return (cells[section].items.count)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return cells[section].title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //section ayr?? - items ayr??
        guard let itemModel = cells[indexPath.section].items[indexPath.row] else {return UITableViewCell()}
        switch itemModel.cellType {
        case .alert:
            let cell = tableView.dequeueReusableCell(withIdentifier: AlertTableViewCell.AlertCellIdentifier, for: indexPath) as! AlertTableViewCell
            let model = cells[indexPath.section].items[indexPath.row]!
            cell.initialize(cellModel: model)
            return cell
        case .segment:
            let cell = tableView.dequeueReusableCell(withIdentifier: SegmentTableViewCell.SegmentCellIdentifier, for: indexPath) as! SegmentTableViewCell
            let model = cells[indexPath.section].items[indexPath.row]!
            cell.initialize(cellModel: model)
            return cell
        case .switchh:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.SwitchCellIdentifier, for: indexPath) as! SwitchTableViewCell
            let model = cells[indexPath.section].items[indexPath.row]!
            cell.initialize(cellModel: model)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if cells[indexPath.section].items[indexPath.row]!.cellType == .alert {
            simpleAlertFunc()
        }
    }
}
