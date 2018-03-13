//
//  ViewController.swift
//  ContactsIntel
//
//  Created by George Garcia on 11/14/17.
//  Copyright © 2017 Gee Team. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let cellId = "cellId"

    let twoDArray = [ ["Amy", "Billy", "Carmine", "Catherine", "Vicki", "Kevin", "Raymundo", "George", "Herbie", "Nuvi", "Yumi", "Lindsay", "Riku", "Steve"], ["Chris", "Christiana", "Carolina", "Carl", "Clayton"], ["David", "Dude" , "Dalton", "Deveena"] ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.lightGray
        return label
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
       // let name = self.names[indexPath.row]
        
//        let name = indexPath.section == 0 ? names[indexPath.row] : cNames[indexPath.row]
        
        let name = twoDArray[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = name
        cell.textLabel?.text = "\(name) Section: \(indexPath.section) Row: \(indexPath.row)"
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

