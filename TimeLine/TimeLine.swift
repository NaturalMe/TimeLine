//
//  TimeLine.swift
//  TimeLine
//
//  Created by ZhangJiChao on 16/7/14.
//  Copyright © 2016年 ChenLong. All rights reserved.
//

import UIKit

class TimeLine: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    var datas = [TimeLineData]()
    var cellDelegate: TimeLineCellDelegate?
    
    var lineWidth: CGFloat = 1
    var iconRadius: CGFloat = 20
    var cellSpace: CGFloat = 150 {
        didSet {
            self.rowHeight = cellSpace //间距
        }
    }
    
    private let cellRID = "TimeLineCell"

    private override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: .Plain)
    }
    
    
    init(frame: CGRect) {
        super.init(frame: frame, style: .Plain)
        myInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func myInit() {
        self.dataSource = self //数据源
        self.delegate = self //代理
        self.separatorStyle = .None //去掉cell的分割线
        self.allowsSelection = false //禁止选中
        self.showsVerticalScrollIndicator = false //水平 垂直滚动条不显示
        self.showsHorizontalScrollIndicator = false
        self.registerClass(TimeLineCell.self, forCellReuseIdentifier: cellRID) //注册重用cell
        self.rowHeight = cellSpace //间距
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellRID, forIndexPath: indexPath) as! TimeLineCell
        
        let row = indexPath.row
        let data = datas[row]
        cell.icon.image = data.image
        cell.button.setTitle(data.text, forState: .Normal)
        cell.tag = row
        cell.delegate = cellDelegate
        cell.lineWidth = lineWidth
        cell.iconRadius = iconRadius
        
        if cell.tag == 0 {
            cell.topLine.hidden = true
        } else {
            cell.topLine.hidden = false
        }
        
        if cell.tag == datas.count - 1 {
            cell.downLine.hidden = true
        } else {
            cell.downLine.hidden = false
        }
        
        return cell
    }
}
