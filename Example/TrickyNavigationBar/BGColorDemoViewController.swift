//
//  BGColorDemoViewController.swift
//  TCNavigationBar
//
//  Created by tanchao on 16/4/19.
//  Copyright © 2016年 谈超. All rights reserved.
//

import UIKit
import TrickyNavigationBar
typealias BGColorDemoViewDelegate = UITableViewDataSource & UITableViewDelegate
let NAVBAR_CHANGE_POINT : CGFloat = 50

class BGColorDemoViewController: UIViewController,BGColorDemoViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        scrollViewDidScroll(tableView)
        navigationController?.navigationBar.shadowImage = UIImage()
        tableView.delegate = self
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tableView.delegate = nil
        navigationController?.navigationBar.tc_reset()
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let color = UIColor(red: 0/255.0, green: 175/255.0, blue: 240/255.0, alpha: 1)
        if scrollView.contentOffset.y >  NAVBAR_CHANGE_POINT {
            let alpha = min(1, 1 - ((NAVBAR_CHANGE_POINT + 64 - scrollView.contentOffset.y) / 64))
            navigationController?.navigationBar.tc_setBackgroundColor(color.withAlphaComponent(alpha))
        }else{
            navigationController?.navigationBar.tc_setBackgroundColor(color.withAlphaComponent(0))
        }

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "text"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "header"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

