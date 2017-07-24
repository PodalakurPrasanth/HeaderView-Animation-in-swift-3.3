//
//  TableViewController.swift
//  HeaderViewAnimation
//
//  Created by prasanth.podalakur on 7/24/17.
//  Copyright © 2017 Kelltontech. All rights reserved.
//

import UIKit
import OLSDynamicHeaderViewController
class TableViewController: OLSDynamicHeaderTableViewController {

    private let cellIdenetifier = "defaultCellIdentifier"
    private var elements = [String]()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        // Prasanth
        for n in 1...30 {
            elements.append("Item \(n)")
        }
        
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
    override func headerViewInstance() -> OLSDynamicHeaderView {
        let view = SampleHeaderView.viewInstance()
        return view
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdenetifier)
//        cell?.textLabel?.text = elements[indexPath.row]
//        cell?.accessoryType = .disclosureIndicator
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.nameLabel.text! = elements[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
