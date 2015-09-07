//
//  ViewController.swift
//  SwiftPlayFor3
//
//  Created by Lee on 9/7/15.
//  Copyright (c) 2015 AppStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SendDelegate
{
    var messageViewController: MessageViewController? //此对象必须申明为全局，局部的话会被ARC释放掉，点击button等相关事件crash

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oldArray = [1,2,3,4,5,6,7,8,9,10]
        let newArray = oldArray.filter({$0 > 4})
        println("\(newArray)")
        
        messageViewController = MessageViewController()
        messageViewController?.view.backgroundColor = UIColor.redColor()
        messageViewController?.view.frame = CGRectMake(100, 100, 200, 150)
        messageViewController?.delegate = self;
        self.view.addSubview(messageViewController!.view)
    }
    
    class func blackColor() -> UIColor // 类方法, 通过 class func 关键词声明
    {
        return UIColor.blackColor();
    }
    func addSubView(view: UIView) // 实例方法
    {
        
    }
    
    func sendInfo(text: String) // 必须实现
    {
        println("\(text)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
