//
//  ViewController.swift
//  TextTwistProject
//
//  Created by Benjamin Stone on 11/4/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var labelWithRandonWord: UILabel!
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var buttonNewWord: UIButton!
    
    //var randomWord = Word.getRandomWord()
    var correctRandomWord = Word.getRandomWord().unscrambled
    
    var arrayOfScrambledWord: Array<String> = Array()
    
    var scrambledWord: String = ""

    //var newArrayOfExistingWord = [[Character]]
   
    //let arrayOfCharForRandomWord =
    
    // let characterFromString = Character(randomWord)
    
    //var charactersOfRandomWord = Character(randomWord)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelWithRandonWord.layer.borderColor = UIColor.black.cgColor
        labelWithRandonWord.layer.borderWidth = 1.0
        
        myTextField.layer.borderColor = UIColor.black.cgColor
        myTextField.layer.borderWidth = 1.0
        
        buttonNewWord.isHidden = true
        buttonNewWord.layer.borderColor = UIColor.green.cgColor
        buttonNewWord.layer.borderWidth = 2.0
        
        myTextField.delegate = self
        
        
        scrambledWord = String(correctRandomWord.shuffled())
        
        labelWithRandonWord.text = scrambledWord
        
        arrayOfScrambledWord = [scrambledWord]

    }
    
    
    // let arrayOfChar: [Character] = Array(randomWord)
    
    func findCharacter() {
        for char in arrayOfScrambledWord {
            
            if char == Character(myTextField.text ?? "") {
                // randomWord.remove(at: )
                //randomWord.remove(at: <#T##String.Index#>)
                Array(randomWord).enumerated()
            } else {
            print("I cannot find a letter")
            }
           }
    }
   
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // when user press the enter/return and it executes what the user typed

            if myTextField.text == correctRandomWord {
                myTextField.resignFirstResponder()
                print("Works! \(correctRandomWord)")
                view.backgroundColor = .green
                buttonNewWord.isHidden = false
                return true // write code
            } else {
                print("doesn't work. \(Word.getRandomWord().scrambled)")
                return false
            }

        }

    //let characterFromString = Character(textField.text)
    
    @IBAction func userEntersLetters(_ sender: UITextField) {
    } // do we need it at all to be a textField as action?

    @IBAction func selectNewWord(_ sender: UIButton) {
        view.backgroundColor = .white
        buttonNewWord.isHidden = true
        labelWithRandonWord.text = scrambledWord
        myTextField.text = ""
        //myTextField.resignFirstResponder()
    }

    

}
