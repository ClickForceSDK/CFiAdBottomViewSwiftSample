//
//  ViewController.swift
//  CFiAdBottomViewSwiftSample
//
//  Created by Eric Chen on 2022/3/8.
//

import UIKit
import iMFAD

class ViewController: UIViewController {
    var adbottom : MFAdBottom?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        adbottom = MFAdBottom.init()
        adbottom?.bannerId = "13117"
        adbottom?.delegate = self
        adbottom?.debugInfo(true)
        adbottom?.requestAd()
        self.view.addSubview(adbottom!)
    }

    
}

extension ViewController: MFAdBottomDelegate{
    func onSuccessToMFAdBottom() {
        adbottom?.show()
    }
    
    func onFailToMFAdBottom() {
        
    }
    
    func onCloseToMFAdBottom() {
        
    }
    
    func onClickToMFAdBottom() {
            }
}


