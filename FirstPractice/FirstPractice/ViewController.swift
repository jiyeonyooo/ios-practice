//
//  ViewController.swift
//  FirstPractice
//
//  Created by 유지연 on 1/2/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel! //변수
    @IBOutlet weak var myButton: UIButton!
    
    //앱 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        mainLabel.text = "안녕하세요"
        mainLabel.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        mainLabel.textAlignment = NSTextAlignment.right
        
        myButton.backgroundColor = UIColor.yellow
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
    }
    

}

