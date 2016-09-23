//
//  ViewController.swift
//  tableview
//
//  Created by coral_xxd on 16/9/23.
//  Copyright © 2016年 coral_xxd. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

//    lazy var tableview : UITableView = UITableView()
    
    lazy var tableview : UITableView = {
    
      let temptableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Grouped)
        temptableView.delegate = self
        temptableView.dataSource = self
        
        return temptableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       view.addSubview(tableview)
    
    
    }


    
    
    
    
}


//MARK:- tableview代理
extension ViewController {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return 12
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier = "cell"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        
        if cell == nil {
            
            cell = UITableViewCell(style: .Default, reuseIdentifier: identifier)
        }
        
        cell?.textLabel?.text = "显示行数\(indexPath.row)"
        
       return cell!
    }


}























