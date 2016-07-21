//
//  Detail.swift
//  TimeLine
//
//  Created by 张润良 on 16/7/14.
//  Copyright © 2016年 ChenLong. All rights reserved.
//

import UIKit

class TimeLineData {
    var tag: Int
    var text: String
    var image: UIImage
    //var block: () -> Void
    
    init(tag: Int, text: String, image: UIImage) {
        self.tag = tag
        self.text = text
        self.image = image
    }
    
    @objc func onTouch(sender: AnyObject) {
        //self.block()
    }
    
}