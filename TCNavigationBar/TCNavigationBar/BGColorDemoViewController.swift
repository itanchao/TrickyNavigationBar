//
//  BGColorDemoViewController.swift
//  TCNavigationBar
//
//  Created by tanchao on 16/4/19.
//  Copyright © 2016年 谈超. All rights reserved.
//

import UIKit
typealias BGColorDemoViewDelegate = protocol<UITableViewDataSource,UITableViewDelegate>
private let NAVBAR_CHANGE_POINT : CGFloat = 50

class BGColorDemoViewController: UIViewController,BGColorDemoViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar .tc_setBackgroundColor(UIColor.clearColor())
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let color = UIColor(red: 0/255.0, green: 175/255.0, blue: 240/255.0, alpha: 1)
        if scrollView.contentOffset.y >  NAVBAR_CHANGE_POINT {
            let alpha = min(1, 1 - ((NAVBAR_CHANGE_POINT + 64 - scrollView.contentOffset.y) / 64))
            navigationController?.navigationBar.tc_setBackgroundColor(color.colorWithAlphaComponent(alpha))
        }else{
            navigationController?.navigationBar.tc_setBackgroundColor(color.colorWithAlphaComponent(0))
        }

    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = "text"
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 65
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "header"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

