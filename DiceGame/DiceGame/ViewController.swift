//
//  ViewController.swift
//  DiceGame
//
//  Created by 유지연 on 1/7/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstImgView: UIImageView!
    @IBOutlet weak var secondImgView: UIImageView!
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func rollBtnTapped(_ sender: UIButton) {
        
        firstImgView.image = diceArray.randomElement()
        secondImgView.image = diceArray.randomElement()
    }
    


}

