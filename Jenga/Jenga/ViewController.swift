//
//  ViewController.swift
//  Jenga
//
//  Created by Sathyanarayanan V on 10/14/17.
//  Copyright © 2017 Sathyanarayanan V. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var jenga = Jenga()
    
    @IBOutlet weak var jengaNumber: UITextField!
    @IBOutlet weak var jengaAnswer: UILabel!
    @IBOutlet weak var jengaAnswerExplanation: UILabel!
    
    @IBOutlet weak var answerView: UIView!
    
    @IBAction func revealAnswerClicked(_ sender: UIButton) {
        doneButtonAction()
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        answerView.isHidden = true
        jengaNumber.text = ""
        jengaNumber.becomeFirstResponder()
    }
    
    @objc func doneButtonAction() {
        guard let text = self.jengaNumber.text, let num = Int(text) else { return }
        self.jengaAnswer.text = self.jenga.getAnswer(forIndex: num) ?? "Enter Correct Number"
        self.jengaAnswerExplanation.text = self.jenga.getExplanation(forIndex: num) ?? ""
        jengaNumber.text = " "
        self.answerView.isHidden = false
        self.view.bringSubview(toFront: self.answerView)
        self.jengaNumber.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addDoneButtonOnKeyboard()
        jengaNumber.becomeFirstResponder()
    }
    
    func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x:0, y:0, width:320, height:50))
        doneToolbar.barStyle = UIBarStyle.default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: #selector(ViewController.doneButtonAction))
        
        let items = NSMutableArray()
        items.add(flexSpace)
        items.add(done)
        
        doneToolbar.items = [flexSpace, done]
        doneToolbar.sizeToFit()
        
        self.jengaNumber.inputAccessoryView = doneToolbar
        self.jengaNumber.attributedPlaceholder = NSAttributedString(string: "Enter",
                                                               attributes: [NSAttributedStringKey.foregroundColor: UIColor.lightText])

    }
}

