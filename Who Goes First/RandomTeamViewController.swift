//
//  ViewController.swift
//  Who Goes First
//
//  Created by Guled Ali on 2/5/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import UIKit

class RandomTeamViewController: UIViewController,UITextFieldDelegate {
    
    //Out lets for textfields, button and label
    @IBOutlet weak var team1TextField: UITextField!
    @IBOutlet weak var team2TextField: UITextField!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var selectButton: UIButton!
    
   //View didload method, it's called once
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        selectButton.setTitle("Enter Both Team Names", for: UIControl.State.disabled)
        selectButton.isEnabled = false
       

    }
    
    
    //Checks if the textfields are empty and selects random textfield and display the result in the label
    @IBAction func selectTeam(_ sender: UIButton) {
        
        if let team1 = team1TextField.text, let team2 = team2TextField.text, !team1.isEmpty, !team2.isEmpty {
            
            let randTextField = [team1,team2]
            let randNumber = randTextField.randomElement()
            teamNameLabel.text = "\(randNumber ?? "???") goes first!"
            
        } else {
            
            print("You must type something in the textfields")
        
        }
    }
    
    //Checks if the textfield is edited, if so enables the button
    @IBAction func bothTextFieldEditingChanged(_ sender: UITextField) {
        if team1TextField.text != "" && team2TextField.text != ""{
        selectButton.setTitle("Select Random Team", for: .normal)
        selectButton.isEnabled = true
        print("is edited")

        } else {
            selectButton.setTitle("Enter Both Tean Names", for: .disabled)
            selectButton.isEnabled = false
        }
    }
    
    //Action that changes the appearance of the view
    @IBAction func darkMode(_ sender: UIButton) {
        view.backgroundColor = UIColor.darkGray
    }
    @IBAction func lightMode(_ sender: UIButton) {
        view.backgroundColor = UIColor.lightGray
    }
}



