//
//  qnaViewController.swift
//  qnaeasyApp
//
//  Created by Huang Hao on 2017/9/5.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit
import GameplayKit





class qnaViewController: UIViewController {
    var count = 0
    var number = 0
    var grade = 0
    var QuestionsRandom: GKShuffledDistribution?
    var ChoiceRandom: GKShuffledDistribution?
    
    func update(){
        number = QuestionsRandom!.nextInt()
        let choice = qnasArray[number]
        QLabel.text = qnasArray[number].question
        ALabel.text = qnasArray[number].answer
        ALabel.isHidden = true
        QView.image = UIImage(named: qnasArray[number].name)
        var i = 0
        for choiceBT in ChoiceButton{
            choiceBT.setTitle(choice.choice[i],for: UIControlState.normal)
            i = i + 1
        }

    }
    func next() {
        number = QuestionsRandom!.nextInt()
        
        count = count + 1
        if count <= qnasArray.count {
            update()
        }else{
            performSegue(withIdentifier: "ResultSegue", sender: nil)

        }
    }
    
    @IBAction func ChoiceButtonAction(_ sender: UIButton) {
        let choice = qnasArray[number]
        let buttonIndex = ChoiceButton.index(of: sender)
        
        print(buttonIndex!)
        print(choice.choice[buttonIndex!])
        if choice.choice[buttonIndex!] == choice.answer{
            grade = grade + 10
        }
        next()
    }
    
    
    @IBOutlet weak var ALabel: UILabel!
    @IBOutlet var ChoiceButton: [UIButton]!
    @IBOutlet weak var QView: UIImageView!
    @IBOutlet weak var QLabel: UILabel!
    @IBOutlet weak var Alabel: UILabel!
    @IBAction func Back(segue:UIStoryboardSegue){
        count = 1
        number = 0
        grade = 0
        update()
        
    }
    @IBAction func ShowAButton(_ sender: Any) {
        ALabel.isHidden = false

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuestionsRandom = GKShuffledDistribution(lowestValue: 0, highestValue: qnasArray.count-1)
        number = QuestionsRandom!.nextInt()
        count = count + 1
        next()
        // Do any additional setup after loading the view.
       
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as! ResultViewController
        controller.grade = grade
    }
 
   
    

}
