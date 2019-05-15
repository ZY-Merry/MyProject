//
//  HomeFlutterController.swift
//  NativeAndFlutterTest
//
//  Created by YZhong on 2019/5/13.
//  Copyright © 2019年 YZhong. All rights reserved.
//

import UIKit
import Flutter
class HomeFlutterController: FlutterViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    override func loadDefaultSplashScreenView() -> Bool {
        return false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
        let channelName = "com.mine.our/native_get"
        let messageChnnel = FlutterMethodChannel.init(name: channelName, binaryMessenger: self)
        messageChnnel.setMethodCallHandler { [weak self](call, result) in
            print(call.method)
            if (call.method == "showOrHiddenTabbar"){
                
            }
            if (call.method == "moreButtonPop"){
                
            }
            if (call.method == "loginOrEditInfo"){
                
            }
            if (call.method == "toJiFenDetial"){
               
            }
            if (call.method == "toLookTimeDetial"){
               
            }
            
            if (call.method == "toJumpSubController"){
                
            }
            if (call.method == "toJumpPerferenceSet"){
               
            }
            if (call.method == "getRequestSystermParameter"){
                
            }
            if (call.method == "goToContentDetial"){
                
            }
            
            
            
        }
        
        
        let eventChannel = FlutterEventChannel.init(name: "com.mine.our/native_post", binaryMessenger: self)
        
        self.view.backgroundColor = UIColor.white
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
