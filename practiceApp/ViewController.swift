//
//  ViewController.swift
//  practiceApp
//
//  Created by Macintosh on 26.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueFirstText: UITextField!
    @IBOutlet weak var valueSecondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        
        
        if valueFirstText.text == "" || valueSecondText.text == "" {
            
            makeAlert(titleInput: "Hata", messageInput: "Lütfen değer giriniz!")
            
            resultLabel.text = "Sonuç="
            
        }else {
            
            if  let value1 = Int(valueFirstText.text!) {
                if let value2 = Int(valueSecondText.text!) {
                    
                    result = value1 + value2
                    
                    resultLabel.text = "Sonuç = \(result)"
                    
                    
                }
            }

        }
        
    
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if valueFirstText.text == "" || valueSecondText.text == "" {
            
            makeAlert(titleInput: "Hata", messageInput: "Lütfen değer giriniz!")
            
            resultLabel.text = "Sonuç="
            
        }else {
            
            if  let value1 = Int(valueFirstText.text!) {
                if let value2 = Int(valueSecondText.text!) {
                    
                    result = value1 - value2
                    
                    resultLabel.text = "Sonuç = \(result)"
                    
                    
                }
            }
    
        }
        
        
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        
        if valueFirstText.text == "" || valueSecondText.text == "" {
            
            makeAlert(titleInput: "Hata", messageInput: "Lütfen değer giriniz!")
            
            resultLabel.text = "Sonuç="
            
        }else {
            
            if  let value1 = Int(valueFirstText.text!) {
                if let value2 = Int(valueSecondText.text!) {
                    
                    result = value1 * value2
                    
                    resultLabel.text = "Sonuç = \(result)"
                    
                    
                }
            }
    
        }
    }
    
    @IBAction func dividedClicked(_ sender: Any) {
        
        
        if valueFirstText.text == "" || valueSecondText.text == "" {
            
            makeAlert(titleInput: "Hata", messageInput: "Lütfen değer giriniz!")
            
            resultLabel.text = "Sonuç="
            
        }else {
            
            if  let value1 = Int(valueFirstText.text!) {
                if let value2 = Int(valueSecondText.text!) {
                    
                    result = value1 / value2
                    
                    resultLabel.text = "Sonuç = \(result)"
                    
                    
                }
            }
    
        }
    }
    
    
        func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }

    
    
}
   

