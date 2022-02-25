//
//  UIKitComponentViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 25.02.2022.
//

import UIKit

class UIKitComponentViewController: UIViewController {
    @IBOutlet var nbaSegmented: UISegmentedControl!
    @IBOutlet var nbaTableView: UITableView!
    
    let easternConference = ["Bulls", "Heat", "76ers", "Bucks", "Cavaliers", "Celtics", "Raptors", "Nets", "Hornets", "Hawks", "Wizard", "Knicks", "Pacers", "Pistons", "Magic"]
    let westernConference = ["Suns", "Warriors", "Grizzlies", "Jazz", "Maverciks", "Nuggets", "Timberwolves", "Clippers", "Lakers", "Trail Blazers", "Spurs", "Pelicans", "Kings", "Thunder", "Rockets"]
    
    lazy var tableViewArray = easternConference
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nbaTableView.delegate = self
        nbaTableView.dataSource = self
        nbaSegmented.backgroundColor = .white
    }
    
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            tableViewArray = easternConference
            
        }
        if sender.selectedSegmentIndex == 1 {
            tableViewArray = westernConference
        }
        nbaTableView.reloadData()
    }
}

extension UIKitComponentViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = tableViewArray[indexPath.row]
        return cell
    }
}
