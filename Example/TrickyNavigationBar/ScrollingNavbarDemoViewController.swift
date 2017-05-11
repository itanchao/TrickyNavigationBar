//
//  ScrollingNavbarDemoViewController.swift
//  TCNavigationBar
//
//  Created by tanchao on 16/4/19.
//  Copyright © 2016年 谈超. All rights reserved.
//

import UIKit
import TrickyNavigationBar
class ScrollingNavbarDemoViewController: UIViewController,BGColorDemoViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        if offsetY > 0 {
            if offsetY >= 44 {
                setNavigationBarTransformProgress(1)
            }else{
                setNavigationBarTransformProgress(offsetY/44)
            }
        }else{
            setNavigationBarTransformProgress(0)
            navigationController?.navigationBar.backIndicatorImage = UIImage()
        }
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.tc_reset()
    }
    func setNavigationBarTransformProgress(_ progress:CGFloat){
        navigationController?.navigationBar.tc_setTranslationY(-44 * progress)
        navigationController?.navigationBar.tc_setElementsAlpha(1-progress)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "text"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
