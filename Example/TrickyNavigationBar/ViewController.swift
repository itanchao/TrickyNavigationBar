//
//  ViewController.swift
//  TrickyNavigationBar
//
//  Created by itanchao on 05/11/2017.
//  Copyright (c) 2017 itanchao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    lazy private  var tableView :UITableView = UITableView(frame: self.view.frame, style: .grouped)

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addSubview(tableView)
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        let tableViewConstraints : [NSLayoutConstraint] = [
//            tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            tableView.widthAnchor.constraint(equalTo: view.widthAnchor),
//            tableView.heightAnchor.constraint(equalTo: view.heightAnchor)
//        ]
//        NSLayoutConstraint.activate(tableViewConstraints)
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.rowHeight = 50
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
        if indexPath.row % 2 == 0 {
            cell?.textLabel?.text = "Demo"
        }else{
            cell?.textLabel?.text = "Demo2"
        }
        return cell!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

