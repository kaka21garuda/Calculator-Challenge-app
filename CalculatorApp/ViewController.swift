//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Buka Cakrawala on 11/15/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var regularString: String = ""
    var operationArray = [String]()
    var finalArray = [String]()
    
    var isFirstNumber = true
    var operand1: Int = 0
    var equal = "="
    
    var displayValue: Int {
        get {
            return (NumberFormatter().number(from: resultLabel.text!)?.intValue)!
        } set {
            resultLabel.text = "\(newValue)"
            isFirstNumber = true
            equal = "="
        }
    }
    
    @IBOutlet weak var valueOfComputedResults: UILabel!
    @IBOutlet weak var resultLabel: UILabel! = UILabel()
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        let number = sender.currentTitle
        resultLabel.text = isFirstNumber ? number: resultLabel.text! + number!
        operationArray.append(resultLabel.text!)
        isFirstNumber = false
    }
    
    
    @IBOutlet weak var resultsNumberLabel: UILabel!
    
    @IBAction func operatorButton(_ sender: UIButton) {
        equal = sender.currentTitle!
        operand1 = displayValue
        operationArray.append(equal)
        //operationArray.append(String(operand1))
        isFirstNumber = true
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        switch equal {
        case "+":
            displayValue += operand1
            operationArray.append("=")
            operationArray.append(String(displayValue))
            regularString = operationArray.joined(separator: " ")
            finalArray.append(regularString)
            resultsNumberLabel.text = String(finalArray.count)
            print(finalArray)
        case "-":
            displayValue = operand1 - displayValue
            operationArray.append("=")
            operationArray.append(String(displayValue))
            regularString = operationArray.joined(separator: " ")
            finalArray.append(regularString)
            resultsNumberLabel.text = String(finalArray.count)
            print(finalArray)
        default:
            break
        }
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        displayValue = 0
        operationArray.removeAll()
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

