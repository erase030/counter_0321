//
//  ViewController.swift
//  counter_0321
//
//  Created by dit08 on 2019. 3. 21..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var count = 0
    var d = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "0"
    }

    @IBAction func btn(_ sender: Any) {
        if(count<9 && d==0){
            count+=1;
            lbl.text="\(count)"
            if(count==9 && d==0){
                d = 1
            }
        } else if(count>=9 || d==1) {
            count-=1
            lbl.text="\(count)"
            if(count==0 && d==1){
                d = 0
            }
        }
    }
    
}

