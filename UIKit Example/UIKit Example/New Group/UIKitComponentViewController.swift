//
//  UIKitComponentViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 25.02.2022.
//

import UIKit

class UIKitComponentViewController: UIViewController {

    @IBOutlet var componentTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        componentTableView.delegate = self
//        componentTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

//extension UIKitComponentViewController: UITableViewDelegate, UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
//
//
//}
