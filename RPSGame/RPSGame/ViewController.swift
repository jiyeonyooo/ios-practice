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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        comImgView.image = #imageLiteral(resourceName: "rock")
        myImgView.image = UIImage(named:"ready.png")
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }
    
    
    @IBAction func rpsBtnTapped(_ sender: UIButton) {
    }
    

    @IBAction func selectBtnTapped(_ sender: UIButton) {
    }
    
    @IBAction func resetBtnTapped(_ sender: UIButton) {
    }
    
}

