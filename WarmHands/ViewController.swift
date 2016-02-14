//
//  ViewController.swift
//  WarmHands
//
//  Created by Qing-Cheng Li on 2016/1/21.
//  Copyright © 2016年 QCLS. All rights reserved.
//

import UIKit
import AFNetworking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Test bridge
        let test = TestObj()
        test.test()
        
        // Test bridge from pod
        _ = AFURLSessionManager()

        // Test dispatch
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) { () -> Void in
            var counter = 1
            while counter < 999999999999999 {
                print(counter)
                counter++
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

