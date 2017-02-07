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

    @IBOutlet weak var counterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Test bridge
        let test = TestObj()
        test.test()
        
        // Test bridge from pod
        _ = AFURLSessionManager()

        // Test dispatch
//        DispatchQueue.global(priority: DispatchQueue.GlobalQueuePriority.default).async { () -> Void in
//            var counter = 1
//            while counter < 999999 {
//                print(counter)
//                counter += 1
////                self.counterLabel.text = "counter \(counter)"
//                self.updateCounterLabel(counter)
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for i in 1...999999 {
            print("\(i)")
            self.updateCounterLabel(i)
        }
    }

    func updateCounterLabel(_ count: Int) {
        print("count = \(count)")
        let c = count + 0
        //let str = "count \(count)"
        self.counterLabel.text = "\(c)"
    }

}

