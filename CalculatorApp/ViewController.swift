//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Buka Cakrawala on 11/15/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var arrayInString = [String]()
    var arrayInInteger = [Int]()
    
    
    @IBOutlet weak var resultLabel: UILabel! = UILabel()
   
   
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        let number: Int? = Int((sender.titleLabel?.text!)!)
        arrayInString.append(String(number!))
        arrayInInteger.append(number!)
        resultLabel.text = arrayInString.joined(separator: "")
        print(Int(resultLabel.text!)! + 1)
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        if arrayInInteger.count == 0 {
            print("nothing to be added!")
        } else {
            
        }
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
    }
    
    @IBAction func equalButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

