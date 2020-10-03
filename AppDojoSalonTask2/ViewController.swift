//
//  ViewController.swift
//  AppDojoSalonTask2
//
//  Created by 守屋譲司 on 2020/10/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.keyboardType = UIKeyboardType.numberPad
        textField2.keyboardType = UIKeyboardType.numberPad
    }
 
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let number1 = Double(textField1.text!) ?? 0.0
        let number2 = Double(textField2.text!) ?? 0.0
        
        guard textField1.text != "", textField2.text != "" else {

            resultLabel.text = "数値を入力してください"
            
            return
        }
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            resultLabel.text = "\(number1 + number2)"
        case 1:
            resultLabel.text = "\(number1 - number2)"
        case 2:
            resultLabel.text = "\(number1 * number2)"
        case 3:
            if number2 > 0.0 {
                resultLabel.text = "\(number1 / number2)"
            } else {
                resultLabel.text = "割る数には０以外を入力してください"
                
                return
            }
        default:
            break
        }
    }
    
}

