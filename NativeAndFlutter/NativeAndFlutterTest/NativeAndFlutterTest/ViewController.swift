//
//  ViewController.swift
//  NativeAndFlutterTest
//
//  Created by YZhong on 2019/5/13.
//  Copyright © 2019年 YZhong. All rights reserved.
//

import UIKit
import Flutter
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func flutterGobtnClick(_ sender: Any) {
        let vc = HomeFlutterController()
        vc.setInitialRoute("mine_page")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

