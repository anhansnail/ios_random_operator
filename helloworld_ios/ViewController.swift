//
//  ViewController.swift
//  helloworld_ios
//
//  Created by Minh Anh on 12/1/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstNumberLb: UILabel!
    @IBOutlet var secondNumberLb: UILabel!
    @IBOutlet var operatorLb: UILabel!
    @IBOutlet var resultLb: UILabel!
    @IBOutlet var nextBtnOutlet: UIButton!
    @IBAction func nextBtn(_ sender: Any) {
        randomOp()
    }
    func randomOp() {
        let arithmeticOperators = ["+", "-", "*", "/"]
        let fistNumber = Int.random(in: 1...1000)
        let secondNumber = Int.random(in: 1...1000)
        firstNumberLb.text = String(fistNumber)
        secondNumberLb.text = String(secondNumber)
        let choice = arithmeticOperators.randomElement()!
        operatorLb.text = choice
        switch choice {
        case "+":
            resultLb.text = String(fistNumber + secondNumber)
        case "-":
            resultLb.text = String(fistNumber - secondNumber)
        case "*":
            resultLb.text = String(fistNumber*secondNumber)
        case "/":
            resultLb.text = String(fistNumber/secondNumber)
        default:
            print("No")
        }
    }
    func customNextBtnUI() {
        self.nextBtnOutlet.layer.cornerRadius = 20.0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        randomOp()
        customNextBtnUI()
        // Do any additional setup after loading the view.
    }    
}

