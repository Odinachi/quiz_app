//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var falseButton: UIButton!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var questionOutlet: UILabel!
    @IBOutlet var scoreText: UILabel!
    
    
    var qiuzBrain = QuizBrain()
   
    
    var questionIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
      updateUi()
        scoreText.text = "Score: \(qiuzBrain.getScore())"
    }

    @IBAction func answerPress(_ sender: UIButton) {
        
        let ans = qiuzBrain.checkAnswer(sender.currentTitle!)
        if ans {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
       
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
       
    }
    
    @objc func updateUi(){
       
        falseButton.backgroundColor = UIColor.clear
        trueButton.backgroundColor = UIColor.clear
        questionOutlet.text = qiuzBrain.getQuestion()
        progressBar.progress = qiuzBrain.getProgressIndex()
        scoreText.text = "Score: \(qiuzBrain.getScore())"
    }
    
}

