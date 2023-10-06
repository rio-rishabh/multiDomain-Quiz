//
//  ViewController.swift
//  MutliDomain-Quiz
//
//  Created by Rishabh Sharma on 04/10/23.
//

import UIKit

class LandingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func indianDefencePressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToFirst", sender: self)
    }
    
    @IBAction func indianPoliticsPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToSecond", sender: self)
        
    }
    
    @IBAction func indianHistoryPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToThird", sender: self)
        
    }
    
    @IBAction func indianEconomyPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToFourth", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToFirst"{
            
            let destinationVC = segue.destination as! FirstViewController
        }
        else if segue.identifier == "goToSecond"{
            
            let destinationVC = segue.destination as! SecondViewController
        }
        else if segue.identifier == "goToThird"{
            let destinationVC = segue.destination as! ThirdViewController
        }
        else if segue.identifier == "goToFourth"{
            let destinationVC = segue.destination as! FourthViewController
        }
    }
}

