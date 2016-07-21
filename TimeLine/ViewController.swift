//
//  ViewController.swift
//  TimeLine
//
//  Created by ZhangJiChao on 16/7/14.
//  Copyright © 2016年 ChenLong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TimeLineCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d1 = TimeLineData(tag: 1, text: "深灰色", image: UIImage(named: "深灰色")!)
        let d2 = TimeLineData(tag: 2, text: "绿色", image: UIImage(named: "绿色")!)
        let d3 = TimeLineData(tag: 3, text: "蓝色", image: UIImage(named: "蓝色")!)
        let d4 = TimeLineData(tag: 4, text: "黄色", image: UIImage(named: "黄色")!)
        let d5 = TimeLineData(tag: 5, text: "红色", image: UIImage(named: "红色")!)
        let d6 = TimeLineData(tag: 6, text: "紫色", image: UIImage(named: "紫色")!)
        let d7 = TimeLineData(tag: 7, text: "橘黄色", image: UIImage(named: "橘黄色")!)
        let datas = [d1, d2, d3, d4, d5, d6, d7]
        
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        let timeLine = TimeLine(frame: CGRect(x: 0, y: 0, width: width, height: height))
        timeLine.datas = datas
        
        //可选属性
        timeLine.cellDelegate = self
        timeLine.cellSpace = 300
        timeLine.lineWidth = 1
        timeLine.iconRadius = 20
        self.view.addSubview(timeLine)
    }
    
    func click(tag: Int) {
        print("tag: \(tag)")
    }
}

