//
//  QuestionViewController.swift
//  questionsForTikTok
//
//  Created by Jingwen Guo on 5/28/16.
//  Copyright © 2016 lazyHuskies. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    var questions = [Question]()
    var transferQ = [Question]()
    var qNum = 0
       
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        questions = transferQ
    }
    
    // set questions with categories
    func pickQuestion() {
        if questions.count > 0 {
            qNum = 0
            questionLabel.text = questions[qNum].questionText
            
            for i in 0..<buttons.count{
                buttons[i].setTitle(questions[qNum].answers[i], forState: UIControlState.Normal)
            }
            answer = buttons[answerNum].currentTitle!
            
            questions.removeAtIndex(qNum)
        }
    }

    
    @IBAction func Button1Action(sender: AnyObject) {
    }
  
    @IBAction func Button2Action(sender: AnyObject) {
    }
    
    
    @IBAction func Button3Action(sender: AnyObject) {
    }
}
