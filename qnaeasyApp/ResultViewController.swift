//
//  ResultViewController.swift
//  qnaeasyApp
//
//  Created by Huang Hao on 2017/9/5.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit
import GameplayKit



class ResultViewController: UIViewController {
    
    
    var grade = 0
    var count = 0

    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBAction func RestarButton(_ sender: UIButton) {
         count = 0
         grade = 0
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ResultLabel.text = "\(grade)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
