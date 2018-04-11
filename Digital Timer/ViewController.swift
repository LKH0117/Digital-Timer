//
//  ViewController.swift
//  Digital Timer
//
//  Created by D7702_09 on 2018. 4. 11..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTimer = Timer()
    var chack = false
    @IBOutlet weak var aSS: UISwitch!
    @IBOutlet weak var mylbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aSS.setOn(false, animated: true)
        
//        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:
//            #selector(updateTime), userInfo: nil, repeats: true)
        //클로져(closure)의 사용
//        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (myTimer) in
//            self.updateTime()
//            })
    }
    
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EE"
        mylbl.text = formatter.string(from: date)
    }
    @IBAction func aS(_ sender: Any) {
        if aSS.isOn == true {
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (myTimer) in
                self.updateTime()
                })
        } else {
            myTimer.invalidate()
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

