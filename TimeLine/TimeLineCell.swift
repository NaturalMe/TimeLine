//
//  TimeLineCell.swift
//  TimeLine
//
//  Created by ZhangJiChao on 16/7/14.
//  Copyright © 2016年 ChenLong. All rights reserved.
//

import UIKit

class TimeLineCell: UITableViewCell {

    var icon: UIImageView!
    var button: UIButton!
    var delegate: TimeLineCellDelegate?
    var topLine: UIView!
    var downLine: UIView!
    var lineWidth: CGFloat!
    var iconRadius: CGFloat!
    
    func buttonClick(sender: UIButton) {
        delegate?.click(self.tag)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        icon = UIImageView()
        addSubview(icon)
        
        button = UIButton()
        button.setTitleColor(UIColor.grayColor(), forState: .Normal)
        button.addTarget(self, action: #selector(buttonClick(_:)), forControlEvents: .TouchUpInside)
        addSubview(button)
        
        topLine = UIView()
        topLine.backgroundColor = UIColor.grayColor()
        addSubview(topLine)
        
        downLine = UIView()
        downLine.backgroundColor = UIColor.grayColor()
        addSubview(downLine)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()

        icon.frame = CGRect(x: (self.frame.width - iconRadius) / 2, y: (self.frame.height - iconRadius) / 2, width: iconRadius, height: iconRadius)
        button.frame = CGRect(x: icon.frame.origin.x + 30.0, y: icon.frame.origin.y, width: 100, height: 20)
        
        let lineX = (self.frame.width - lineWidth) / 2
        let lineHeight = (self.frame.height - iconRadius) / 2
        
        topLine.frame = CGRect(x: lineX, y: 0, width: lineWidth, height: lineHeight)
        downLine.frame = CGRect(x: lineX, y: (self.frame.height + iconRadius) / 2, width: lineWidth, height: lineHeight)
    }
    
}
