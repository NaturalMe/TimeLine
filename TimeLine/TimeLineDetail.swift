//
//  TimeLineDetail.swift
//  TimeLine
//
//  Created by ZhangJiChao on 16/7/15.
//  Copyright © 2016年 ChenLong. All rights reserved.
//

import UIKit

class TimeLineDetail: UIControl {
    
    var what: String = "学习"
    var number: String = "1"
    var unit: String  = "小时"
    var desc: String = "Swift UITableViewCell"
    
    private var titleLabel: UILabel!
    private var descLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100.0, height: 20.0))
        titleLabel.text = desc //what + " " + number + " " + unit
        titleLabel.font = UIFont.systemFontOfSize(11, weight: 0.3)
        titleLabel.textColor = UIColor.grayColor()
        addSubview(titleLabel)
        
        descLabel = UILabel(frame: CGRect(x: titleLabel.frame.origin.x, y: titleLabel.frame.origin.y + 30.0, width: 150, height: 20))
        descLabel.text = desc
        descLabel.font = UIFont.systemFontOfSize(11, weight: 0.2)
        descLabel.textColor = UIColor.grayColor()
        addSubview(descLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
