//
//  FourthViewController.swift
//  MutliDomain-Quiz
//
//  Created by Rishabh Sharma on 04/10/23.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
   
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }
    
    var quizBrain_4 = QuizBrain_4()
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        let userCorrectAnswer = quizBrain_4.checkAnswer(userAnswer)
        
        if userCorrectAnswer{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain_4.getNewQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    @objc func updateUI(){
        questionLabel.text = quizBrain_4.getQuestionText()
        
        let answerChoice = quizBrain_4.getAnswerChoice()
        scoreLabel.text = "Score: \(quizBrain_4.getScore())"
        option1.setTitle(answerChoice[0], for: .normal)
        option2.setTitle(answerChoice[1], for: .normal)
        option3.setTitle(answerChoice[2], for: .normal)
        option4.setTitle(answerChoice[3], for: .normal)
        
        option1.backgroundColor = UIColor.clear
        option2.backgroundColor = UIColor.clear
        option3.backgroundColor = UIColor.clear
        option4.backgroundColor = UIColor.clear
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
