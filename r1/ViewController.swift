//
//  ViewController.swift
//  r1
//
//  Created by Ezgi  on 24.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var text1: UILabel!
    
    @IBOutlet weak var text2: UILabel!
    
    @IBOutlet weak var text3: UILabel!
    
    @IBOutlet weak var text4: UILabel!
    
    @IBOutlet weak var text5: UILabel!
    
    @IBOutlet weak var text6: UILabel!
    
    @IBOutlet weak var text7: UILabel!
    
    @IBOutlet weak var text8: UILabel!
    
    @IBOutlet weak var text9: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(text.text = "")
        text.text = "random elemanlar "
        
    }
    
    @IBAction func buttonRandom(_ sender: UIButton){
        
        var randomNumbers: [Int] = []
        for _ in 0...8 {
            
            let randomInt = Int.random(in: 1...100)
            randomNumbers.append(randomInt)
            print(randomInt)
            text.text = "\(randomNumbers)"
        }
        
        
        let labels = [text1,text2,text3,text4,text5,text6,text7,text8,text9]
       
        for i in 0...8 {
            
                if randomNumbers[i] % 3 == 0 {
                  
      
                    labels[i]?.backgroundColor = UIColor.systemRed
                    labels[i]?.text = "Kalan 0"
    
                }else if randomNumbers[i] % 3 == 1  {
                  
                    labels[i]?.backgroundColor = UIColor.systemBlue
                    labels[i]?.text = "Kalan 1"
                        
                }else if randomNumbers[i] % 3 == 2 {
                   
                    labels[i]?.backgroundColor = UIColor.systemYellow
                    labels[i]?.text = "Kalan 2"
                        
                }
                
            }
            
        }
    }


// dictionary mi tanımlamam gerekiyor ?

