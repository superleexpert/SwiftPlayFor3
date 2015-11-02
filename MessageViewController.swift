//
//  MessageViewController.swift
//  SwiftPlayFor3
//
//  Created by Lee on 9/7/15.
//  Copyright (c) 2015 AppStudio. All rights reserved.
//

import UIKit

// 声明协议
protocol SendProtocol
{
    func sendMethod()
}

//声明delegate
protocol SendDelegate: NSObjectProtocol
{
    func sendInfo(text: String)
}

//声明Closure
typealias SendClosure = (list: Array<String>) -> Void

class MessageViewController: UIViewController {
    var delegate: SendDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        let sendButton: UIButton = UIButton(type: UIButtonType.ContactAdd)
        sendButton.frame = CGRectMake(10, 10, 30, 30)
        sendButton.addTarget(self, action: Selector("backAction:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(sendButton)
        
        let closureButton: UIButton = UIButton(type: UIButtonType.ContactAdd)
        closureButton.frame = CGRectMake(50, 50, 30, 30)
        closureButton.addTarget(self, action: Selector("closureAction:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(closureButton)
        
    }
    
    func backAction(sender: UIButton)
    {
        self.delegate.sendInfo("Send delegate Action!")
    }
    
    func closureAction(sender: UIButton)
    {
        self.sendClosureCallBack() {(list: Array<String>) in
            print("In set Closure \(list)")
        }
    }
    
    func sendClosureCallBack(complete: SendClosure) -> Void
    {
        let array: Array<String> = ["12", "34", "56"]
        complete(list: array)
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
