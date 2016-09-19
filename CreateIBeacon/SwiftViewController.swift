//
//  SwiftViewController.swift
//  CreateIBeacon
//
//  Created by 昕明 刚 on 16/9/12.
//  Copyright © 2016年 brain. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {

    var myTableView = UITableView();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.blueColor();
        
        myTableView = UITableView(frame: CGRectMake(0, 0, 300, 300), style: UITableViewStyle.Grouped);
        myTableView.backgroundColor = UIColor.orangeColor();
        myTableView.delegate = self;
        myTableView.dataSource = self;
        self.view.addSubview(myTableView);
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cellStr = "ssss";
        
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellStr);
        
        
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        print("sddasdasd",indexPath.row);
        
    }
    
    
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        var footerView = UIView();
        footerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 50));
        footerView.backgroundColor = UIColor.redColor();
        
        
        
        
        
        return footerView;
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50;
    }
    
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50;
    }
    
    
}
