//
//  ViewController.swift
//  UpDownGame
//
//  Created by 유지연 on 1/21/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    
    var choiceNumber: Int = 1
    var computerChoice = Int.random(in:1...10)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainLabel.text = "숫자 게임을 시작합니다!"
        numberLabel.text = ""
    }
    
    
    @IBAction func btnPressed(_ sender: UIButton) {
        guard let numString = sender.currentTitle else {return}
        numberLabel.text = numString
        guard let num = Int(numString) else {return}
        choiceNumber = num
    }
    
    
    @IBAction func selectBtnTapped(_ sender: UIButton) {
        if computerChoice > choiceNumber {
            mainLabel.text = "UP!"
        } else if computerChoice < choiceNumber {
            mainLabel.text = "DOWN!"
        } else if computerChoice == choiceNumber {
            mainLabel.text = "정답입니다🤎"
        }
    }
    
    
    @IBAction func resetBtnTapped(_ sender: UIButton) {
        computerChoice = Int.random(in:1...10)
        mainLabel.text = "숫자 게임을 시작합니다!"
        numberLabel.text = ""
    }
    

}

