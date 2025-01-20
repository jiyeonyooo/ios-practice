//
//  ViewController.swift
//  RPSGame
//
//  Created by 유지연 on 1/14/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var comImgView: UIImageView!
    @IBOutlet weak var myImgView: UIImageView!
    
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var myChoice: Rps = Rps.rock
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        comImgView.image = #imageLiteral(resourceName: "ready")
        myImgView.image = UIImage(named:"ready.png")
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }
    
    
    @IBAction func rpsBtnTapped(_ sender: UIButton) {
        
        //guard let title = sender.currentTitle else {return}
        let title = sender.currentTitle!
        //title이 다 있으므로 optional을 강제로 벗겨서 사용
        
        switch title {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
        }
        
    }
    

    @IBAction func selectBtnTapped(_ sender: UIButton) {
        
        switch comChoice {
        case Rps.rock:
            comImgView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.scissors:
            comImgView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        case Rps.paper:
            comImgView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        }
        
        switch myChoice {
        case Rps.rock:
            myImgView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.scissors:
            myImgView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        case Rps.paper:
            myImgView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        }
        
        if comChoice == myChoice {
            mainLabel.text = "비겼습니다"
        } else if comChoice == Rps.paper && myChoice == Rps.scissors {
            mainLabel.text = "이겼습니다! 축하드립니당"
        } else if comChoice == Rps.rock && myChoice == Rps.paper {
            mainLabel.text = "이겼습니다! 축하드립니당"
        } else if comChoice == Rps.scissors && myChoice == Rps.rock {
            mainLabel.text = "이겼습니다! 축하드립니당"
        } else {
            mainLabel.text = "졌습니다ㅜㅜ"
        }
    
    }
    
    @IBAction func resetBtnTapped(_ sender: UIButton) {
        comImgView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "준비"
        myImgView.image = UIImage(named:"ready.png")
        myChoiceLabel.text = "준비"
        
        mainLabel.text = "선택하세요"
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
    
}

